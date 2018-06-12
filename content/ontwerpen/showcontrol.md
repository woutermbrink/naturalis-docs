---
title: "Showcontrol"
date: 2018-05-23T14:52:07+02:00
draft: false
---

De tentoonstellingen en experiences bestaan uit een grote diversiteit aan
technische componenten. Dit document beschrijft de wijze waarop al die componenten
worden aangestuurd, welke systemen waarvoor verantwoordelijk zijn en de
uitgangspunten die hieraan ten grondslag liggen.

## Museum control vs. show control

De verhouding tussen *museum control* en *show control* is als volgt:

* **Museum controller**: Er is één museum controller voor het gehele museum. De
  museum controller is verantwoordelijk voor het startklaar zetten van alle
  componenten in de tentoonstellingen en experiences.

* **Show controller**: Per tentoonstelling of experience is er één
  show controller die verantwoordelijk is voor het real time triggeren en
  controleren van video- en audiocontent, animatronics, interactives en (al dan
  niet via een dedicated lichtcontroller) showlicht. Zoals uitgelegd in de
  beschrijving van de [licht-]({{< relref "licht-controller.md" >}}) en [show
  controller]({{< relref "show-controller.md" >}}) kan deze functie door één
  apparaat worden vervuld.

Met het startklaar zetten van de componenten door de museum controller wordt
specifiek bedoeld dat het component klaar staat om opdrachten te ontvangen van
de show controller en deze uit te voeren. Dit betekent dat bijvoorbeeld
computers moeten zijn voorzien van de juiste software, configuratie en content,
dat alle componenten ook daadwerkelijk aan staan en het netwerk functioneert zodat
opdrachten verstuurd over het netwerk ook daadwerkelijk aankomen.

De onderstaande diagram visualiseert de relatie tussen de museum controller, de
show controller en de diverse componenten:

{{<mermaid align="left">}}
graph TD
    A[Users] --> B(Web interface)
    A[Users] --> C(Ansible Tower UI)
    subgraph Museum controller
    B --> D(Ansible Tower API)
    C --> D
    end
    D -->|Triggeren stand show tentoonstelling| E(Show control)
    D -->|Spanning schakelen| G(Animatronics)
    D -->|Spanning schakelen<br/>Configureren software<br/>Installeren laatste content| F(Computers)
    subgraph Volledig centrale aansturing
    D -->|Spanning schakelen| H(Power relays)
    D -->|Spanning schakelen<br/>Triggeren inputs| I(Projectors)
    D -->|DHCP reserveringen<br/>Instellen VLAN's| J(Netwerk)
    end
    subgraph Gedeelde aansturing
    E -->|Triggeren lichtshows| K(Licht controller)
    E -->|Triggeren stand audio/video| F
    E -->|Triggeren stand animatronic| G
    K -->|DMX| L(Showlicht)
    end
{{< /mermaid >}}

## Specifieke verdeling verantwoordelijkheden

Concreet is de museum controller verantwoordelijk voor:

* Administratie / asset management van alle componenten
* TCP/IP netwerkconnectiviteit
* DHCP reserveringen voor alle componenten met een netwerkverbinding
* DNS voor alle componenten met een netwerkverbinding
* Installatie en configuratie besturingssystemen
* Installatie en configuratie software
* Versiebeheer code voor software en scripts
* Beheer en publicatie van documentatie
* Interfaces voor het inschakelen en beheren van het museum
* Monitoring van alle componenten
* Aansturing relays voor het schakelen van stroom
* Schakelen van spanning van alle componenten, waar nodig na afkoeltijd of
  shutdown van apparaat
* Schakelen van het werklicht
* Het triggeren van de juiste inputs op monitoren en projectoren

Concreet zijn de show controllers in de betreffende tentoonstelling of
experience verantwoordelijk voor het op tijd en in de juiste omstandigheden:

* Triggeren van lichtshows
* Afspelen van audio- en video content
* Triggeren van animatronics

Deze verdeling van de verantwoordelijkheden betekent dat:

* De show controllers in principe geen spanning schakelen. Alleen wanneer dit
  niet anders kan, bijvoorbeeld wanneer het schakelen van de spanning de
  enige manier is om een animatronic deel te laten nemen aan de 'show', kan
  hierop een uitzondering worden gemaakt.
* Het voor de snelle integratie van componenten in de museum infrastructuur
  noodzakelijk is dat de administratie van de basisgegevens (denk aan IP-adres,
  naam en MAC-adres) efficient, en het liefst zo vroeg mogelijk in tijdens de
  ontwikkeling wordt uitgevoerd.

## Workflow

De workflow bij het opstarten van het museum is op basis van deze verdeling van
de verantwoordelijkheden als volgt:

1. Een medewerker van Naturalis drukt via een webinterface op de knop 'Aanzetten
   museum'.
1. De webinterface geeft een commando richting Ansible Tower dat het museum moet
   worden aangezet.
1. Ansible Tower zorgt dat alle apparaten in de juist volgorde worden aangezet,
   controleert alle software instellingen en activeert de monitoring. Op dit
   moment staan alle componenten klaar om content af te spelen.
1. Afhankelijk van de voorkeur kan nu in de webinterface een voorkeursstand
   worden geactiveerd voor elke tentoonstelling in het museum. Dit kan
   bijvoorbeeld een teststand zijn of een reguliere stand.
1. De webinterface geeft een commando richting Ansible Tower dat een bepaalde
   stand in een specifieke tentoonstelling moet worden geactiveerd.
1. Ansible Tower geeft het commando aan de show controller van de betreffende
   tentoonstelling dat die bepaalde stand moet worden geactiveerd en activeert
   waar nodig aanvullende instellingen (denk bijvoorbeeld aan het schakelen van
   het werklicht).
1. De show controller activeert op tijd in de juiste omstandigheden (het
   afspelen van de juiste content op) alle componenten zoals geconfigureerd voor
   de betreffende stand.

De workflow bij het afsluiten van het museum is als volgt:

1. Een medewerker van Naturalis drukt via een webinterface op de knop
   'Uitschakelen museum'.
1. De webinterface geeft een commando richting Ansible Tower dat het museum moet
   worden uitgezet.
1. Ansible Tower geeft het commando aan de show controllers van alle
   tentoonstellingen en experiences dat de lopende show moet worden afgerond.
1. De showcontrollers stoppen de shows.
1. Ansible Tower schakelt de monitoring uit, zorgt dat alle apparaten in de
   juist volgorde worden afgesloten en rekening houdend met evt. afkoelperiodes
   de spanning wordt uitgeschakeld.

## Achtergrond

Aan bovenstaande verdeling ligt een afweging over de inbedding van show
controllers in bestaande ICT infrastructuur ten grondslag.

Traditioneel worden voor de volledige aansturing van technische componenten in
musea show controllers ingezet. Deze show controllers zijn gericht op het real
time aansturen van componenten, al dan niet op basis van signalen die vanuit die
componenten naar de show controller worden gestuurd.

Buiten de museumwereld zijn er met name ook in de IT allerlei systemen die
gericht zijn op het aansturen en beheren van systemen. Enerzijds zijn er
systemen (denk aan domotica-systemen) die, net als show controllers, live reageren
op signalen uit het veld. Deze systemen zijn gerelateerd aan de recente
ontwikkelingen van een Internet of Things (IoT).

Anderzijds zijn er ook systemen die zich focussen op het inrichten en beheren van
(IT-)systemen. De laatste jaren is onder de noemers *infrastructure as code*,
*DevOps* en *continuous delivery* de nadruk komen te liggen op het door middel
van code automatiseren van de aansturing, inrichting en configuratie van
systemen.

Naturalis beheert een grote hoeveelheid IT services op het gebied van
biodiversiteit. Het beheren van deze services gebeurt de afgelopen jaren steeds
meer volgens deze principes. Bij Naturalis heeft dat zich vertaalt naar het
gebruik van *configuration management systemen* als
[Puppet](https://puppet.com/) en [Ansible](https://www.ansible.com/), de bouw
van private clouds op basis van [OpenStack](https://www.openstack.org/) en
[Kubernetes](https://kubernetes.io/) en het gebruik van containertechnologie als
[Docker](https://www.docker.com/).

Wat de aansturing van de componenten in het museum betreft vertonen de hier
genoemde systemen een belangrijke mate van overlap. Traditioneel zijn show
controllers goed zijn in het real time regelen van shows en experiences maar
voorzien zij niet in het geautomatiseerd instellen en controleren van software
configuraties. Veel op beheer gerichte IT systemen zijn aan de andere kant niet
gemaakt voor het real time inregelen van shows maar juist wel goed in het tweede
facet.

Het uitgangspunt van de hierboven toegelichte aansturing (show control) van de
technische componenten in het museum van Naturalis is om die reden gericht op
het benutten van de sterke punten van beide type systemen. Om die reden is er
(vooralsnog) een beperkte rol toebedeeld aan specifieke IoT en domotica-systemen.
