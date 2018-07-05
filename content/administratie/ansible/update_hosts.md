---
title: "Update hosts"
date: 2018-07-05T15:32:04+02:00
draft: true
weight: 20
---

## Inleiding

In de toekomstige situatie willen we een hosts tabel die via git wordt bijgehouden door infra. In deze
tabel staan alle assets in het museum die via ssh benaderbaar zijn. Al deze machientjes zullen via
ansible direct benaderbaar zijn.

We moeten ervan uit gaan dat al deze machines niet direct, of slecht beperkte toegang hebben tot
internet. Maar via de AWS Controller kunnen we toch informatie over ze vergaren en opslaan in
diverse omgevingen.

Dit onderdeel van het museum is nog in een experimentele fase. Alles op het gebied van ansible brengen
we onder in een [github repository](https://github.com/MakeExpose/ansible_sketches).

Ansible is vooral geschikt om veel dezelfde handelingen te verrichten over meerdere servers of 
groepen van servers. Veel van deze handelingen laat je vaak over aan die servers zelf. Alleen in
ons geval is dat niet altijd mogelijk.

### Inloggen

In het geval van TopDesk communicatie moeten we eerst inloggen in de TopDesk api, voordat we informatie
over de assets in de TopDesk kunnen opslaan of bijwerken. Om dit maar één maal te hoeven doen voeren we
eenmalig een task uit, wanneer de host 'localhost' is. Dit ziet er bijvoorbeeld alsvolgt uit:

```
      - name: Login Topdesk api
        uri: 
            url: "{{ topdesk_api_base}}{{topdesk_api_login}}"
            method: GET
            user: "{{ topdesk_user }}"
            password: "{{ topdesk_password }}"
            force_basic_auth: yes
            status_code: 200,404
            timeout: 10
            return_content: yes
        register: topdesk_login_token
        when: hostvars['localhost']['topdesk_login_token'] is undefined and ansible_ssh_host == 'localhost'
```

Wanneer de _topdesk_login_token_ nog niet bekend is en de huidige _ansible_ssh_host_ gelijk is aan 
localhost wordt er via de topdesk login api ingelogd met de credentials. Het resultaat is de token die in
de rest van het script gebruikt wordt.

### Lookup van een component

Om een update te kunnen doen moet het component worden teruggevonden in de TopDesk api. Aangezien we meestal
alleen beschikken over de unieke naam of over een ip-address moeten we filteren op die velden. Dit ziet
er in Ansible alsvolgt uit:

```
      - name: Lookup component id Topdesk api
        uri:
            url: "{{ topdesk_api_base}}{{topdesk_api_assets}}?$filter=name eq '{{ansible_hostname}}'"
            method: GET
            status_code: 200,404
            body_format: json
            headers:
                authorization: "TOKEN id=\"{{ hostvars['localhost']['topdesk_login_token']['content'] }}\""
            return_content: yes
        register: topdesk_dataset
        when: ansible_ssh_host != 'localhost'
```

Wat je dan terugkrijgt is een lijst met 1 id van die betreffende asset.

###  Update

Vervolgens kan dat _asset_id_ weer gebruikt worden om informatie in TopDesk te vervangen of te verbeteren.

```
      - name: Update component Topdesk api
        uri:
            url: "{{ topdesk_api_base}}{{topdesk_api_assets}}/{{hostvars[inventory_hostname]['topdesk_asset_id']}}"
            method: POST
            body: '{
                    "type_id" : "A060D95A-B9D1-4A33-8E87-402BD8135ECC",
                    "specification" : "iets anders?",
                    "name" : "{{ ansible_hostname }}",
                    "ipv4-address" : "{{ ansible_host }}",
                    "mac" : "NODEADBEEF",
            }'
            status_code: 200,400
            body_format: json
            headers:
                authorization: "TOKEN id=\"{{ hostvars['localhost']['topdesk_login_token']['content'] }}\""
            return_content: yes
        delegate_to: localhost
```

Aangezien het hier kan gaan om een device die niet zelf direct aan het internet hangt en dus niet direct 
kan communiceren met TopDesk moeten we dit overlaten aan de host waarop dit ansible playbook draait. Daarom
maken we gebruik van `delegate_to: localhost`. Dit kent een praktisch nadeel. De facts zoals ze in ansible
worden opgeslagen moeten expliciet uit de `hostvars` dictionary worden gehaald. Vandaar dat de url in het
bovenstaande voorbeeld luidt:

```
{{ topdesk_api_base}}{{topdesk_api_assets}}/{{hostvars[inventory_hostname]['topdesk_asset_id']}}
```

De inventory_hostname is de hostname van de host tabel die wordt langsgelopen.

### Facts

Om de facts van iedere server later te kunnen inzien of te gebruiken in andere scripts kan je in de 
`ansible.cfg` file ook zeggen dat deze moeten worden opgeslagen in een lokale database. Dit kan
bijvoorbeeld met redis, maar ook met lokale files. In het bovenstaande voorbeeld is gekozen voor lokale
files via deze configuratie:

```
[defaults]
gathering=smart
fact_caching=jsonfile
fact_caching_connection=./facts
```
