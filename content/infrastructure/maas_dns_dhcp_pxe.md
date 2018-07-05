---
title: "Maas - DNS/PXE/DHCP"
date: 2018-06-15T14:33:29+02:00
draft: false
weight: 5
---

Een belangrijk onderdeel van de infrastructuur zijn DHCP, DNS en PXE. Dit kan gebruikt worden
om fisieke machenes te installeren, bereikbaar te maken en de goede namen en ip adressen te geven.
Maas is een product van Canonical en doet alle deze protocollen in 1 product.

## Termen
* `DNS` : Deze servers vertaald namen (bv google.nl) naar een ip adres.
* `DHCP` : Dit zorg er voor dat apparaten een ip adres krijgen. Je kan ook ip adressen voor
specifieke machines reserveren
* `PXE` : Een protocol dat er voor zorg dat fisieke computers van het netwerk kunnen opstarten ipv een 
locale schijf. Dit kun je gebruiken om computers op afstand te installeren.

## Deployment van Maas

Maas kan simpel geinstalleerd worden op een server. Dit moet wel een fisieke server zijn. Het playbook zieter zo uit:
```
- hosts: maas
  vars:
    maas_adminusers:
      - username: 'root'
        email: 'admin@{{ maas_dns_domain }}'
        password: 'een_beter_wachtwoord'
    maas_dns_domain: 'maas.vdl.naturalis.local'
    maas_region_controller: 'ip address'
    maas_region_controller_url: 'http://{{ maas_region_controller }}:5240/MAAS'
    maas_repo: 'ppa:maas/stable'
    maas_setup_user: false
    maas_single_node_install: true
  roles:
    - role: ansible-maas
```
de role `ansible-maas` is hier te vinden: https://github.com/mrlesmithjr/ansible-maas

Maas bestaat uit twee delen, een region contoller en een rack controller. Een rack controller voort opdrachten uit op een bepaalde locatie. De region controller beheerd de rack controller(s). Vanuit de region controller kun je opdrachten uitvoeren die dus door de rackcontroller worden uitgevoerd.

Het later toevoegen van een rackcontroller is vrij simpel.

## Maas onderdelen

* `Nodes` : Hier staan de machines, devices en controllers. De controllers spreken voor zich. 
Devices zijn apparaten die voorzien moeten worden van een ip adress en een dns 
record (bv beamer) en de machines zijn apparaten die geinstalleerd moeten/kunnen worden.
* `Pods` : Maas kan bv ook libvirt aansturen om virtuale machines te maken
* `Images` : Hier staan de images van de OS'es
* `Zones` : Je kan de netwerken en machines onderverdelen in zones. We zouden eventueel per 
zaal een zone kunnen maken.
* `Subnets` : Hier vind je alles rond om netwerk configuratie
* `Settings` : Hier zijn alle andere settings (bv keys, dhcp snippets etc) te vinden.

## Het deploymen van een machine
Voordat er een machine gedeployed kan worden is er een image nodig. Dat spreekt vanzelf. 
Daarnaast is er ooko een subnet nodig. Een Maas taal is een Fabric een netwerk interface 
op je Maas server. Aan dat fabric moet je een vlan (kan ook untagged zijn) toekennen en 
op dat vlan kun je een subnet defineren. Je kan de subnetten eventueel groeperen in een `space`. 
Voor PXE heb je ook dhcp in een subnet nodig. Die kun je aanzetten nadat het subnet is 
aangemaakt. Als je dit allemaal hebt ben je klaar een machine te deployen. 
Dit kan met de volgende commando reeks. Let er op het tweede woord in het command `admin` een referencie is naar het profiel met de api credentials
```
maas admin machines create hostname=nuc-003 domain=vdl.maas mac_addresses=dc:fe:07:e0:ec:97 architecture=amd64 power_type=wakeonlan power_parameters_power_mac=dc:fe:07:e0:ec:97 power_parameters_power_address=unknown power_parameters_switch_ip=172.16.43.8 power_parameters_port=25
```
Dit process duurt even. Hij gaat kijken welke hardware er allemaal in die machine zit. Ook gaat hij wat hardware testen. Als dit klaar is:

zoek dan het system id op:
```
maas admin machines read mac_address=dc:fe:07:e0:ec:97 | jq '.[0].system_id'
```
zoek dan naar de (netwerk) interfaces:
```
maas admin interfaces read dy8dxe | jq '.[] | select(.mac_address == "dc:fe:07:e0:ec:97") | .id'
```

vind het id van de standaard link
```
maas admin interfaces read dy8dxe | jq '.[] | select(.mac_address == "dc:fe:07:e0:ec:97") | .links[0].id'
```
verwijder de standaard link
```
maas admin interface unlink-subnet dy8dxe 76 id=231
```
Vind het id van het subnet wat je wilt gebruiken
```
maas admin subnets read | jq '.[] | select(.cidr == "172.16.44.0/24") | .id'
```
link de machine tot dat subnet en geeft het het ip adress wat je wilt
```
maas admin interface link-subnet  dy8dxe 76 mode=STATIC subnet=1 ip_address=172.16.44.32
```
alloceer de machine
```
maas admin machines allocate system_id=dy8dxe
```
deploy de machine
```
maas admin machine deploy  dy8dxe distro_series=bionic
```

Done!

## Toevoegen van een dhcp reservering met dns

```
sysetm_id=$(maas admin devices create hostname=beamert-001 domain=vdl.maas mac_addresses=dc:fe:07:e0:ec:f1|jq -r '.system_id')
int_id=$(maas admin interfaces read $system_id | jq -r '.[] | select(.mac_address == "dc:fe:07:e0:ec:f1") | .id')
subnet_id=$(maas admin subnets read | jq -r '.[] | select(.cidr == "172.16.44.0/24") | .id')
maas admin interface link-subnet $system_id $int_id mode=STATIC subnet=$subnet_id ip_address=172.16.44.33
```


