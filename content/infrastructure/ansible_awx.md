---
title: "Ansible AWX"
date: 2018-06-15T14:33:29+02:00
draft: true
weight: 5
---

Ansible heeft zich bewezen als een passende config management software voor het
inrichten van fisieke hardware. Ansible AWX is een API en webinterface die gebruikt
kan worden om ansible script te beheren en uit te voeren. Het bied ook 'role based
access control' (RBAC) zodat men het uitvoeren van bepaalde taken kan afschermen
voor een specifieke gebruikers groep.

## Deployment

De default deployment van kubernetes is gebasseerd op kubernetes. De requirements voor de
installatie zijn:
* `ansible`
* `kubernetes 1.9+`
* `helm`
* `kubectl`
* `kubernetes storage class`

De installatie die gebruikt is is gebasseerd op de officiele AWX installatie methode. The
code kan worden gevonden op https://github.com/MakeExpose/kubernetes-awx-deployment

## Inrichting

### Credentials (authencicatie voor scripts)

AWX moet toegang krijgen tot de machines die gemanaged gaan worden. Dit kan onder het kopje
`credentials`. In het algemeen zal er een `ssh keypair` gebruikt worden.

### Ansible playbooks

Onder het kopje projects kunnen ansible script worden toegevoegd. Je kan hier verwijzen naar
een git repo.

### Inventory
Je kan zelf met de hand een inventory maken. Aan een inventory kun je hosts koppelen. Om je inventory
te hosten op git, zou je inventory scripts kunnen gebruiken. Deze moet dan een JSON terug koppelen. Meer info vind je hier: https://docs.ansible.com/ansible-tower/latest/html/administration/custom_inventory_script.html

### Templates
Een template is een combinatie van
* credentials
* project
* inventory
Hier mee kun je dus een set van ansible scripts uitvoeren op een specifieke set van hosts.

### Gebruikers authenticatie

Onder settings kun je een LDAP configuratie toevoegen. Je kan dan LDAP (active directory) teams aanmaken enteams specifieke rechten geven. 

## Draaien van playbooks

### Playbook via jumphost

Omdat AWX in het datacenter draait en het opdracten moet uitvoeren op machines in het museum is een zo genaamde `jumphost` of `bastion host` nodig. Je kan het volgende toevoegen aan je inventory variablen
```
---
ansible_ssh_common_args: '-o ProxyCommand="ssh -W %h:%p -q user@jumphost_ip"'
```

## Backups

Via de kubernetes deployment worden bijna alle settings al gezet. Deze settings hoeven dan niet gebackupped te worden. Wel moet de database gebackuped worden. Bij de deployment van AWX op k8s zit ook een poc van de backup. 


