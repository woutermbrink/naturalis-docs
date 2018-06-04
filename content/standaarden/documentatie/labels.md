---
title: "Labels"
date: 2018-06-04T14:31:20+02:00
draft: true
---

Een belangrijk onderdeel van de documentatie van het museum bestaat uit de
labeling van componenten. In dit document staan de algemene uitgangspunten, de
werkwijze en de concrete richtlijnen op het vlak van labeling uitgelegd.

## Uitgangspunten

In z'n algemeenheid gelden voor de labeling de volgende uitgangspunten:

1. De labels sluiten qua inhoud aan op de standaard [naamgeving]({{< relref "naamgeving.md"
    >}}).
1. Er wordt gebruik gemaakt van professionele, duurzame labels.
1. Bij het vervangen van een onderdeel dienen slechts een minimale hoeveelheid labels
   vervangen te worden, idealiter alleen de labels van het betreffende onderdeel.

Wat het eerste uitgangspunt betreft valt de notatie op labels in beginsel samen
met de wijze waarop [variabelen]({{< relref "naamgeving.md#variabelen" >}})
worden genoteerd. Dat betekent dat ze bestaan uit een combinatie van de naam van
een `Component`, de naam van een `Variabele` en de waarde van die `Variabele`.

Het is echter niet altijd praktisch mogelijk of van toegevoegde waarde om al die
informatie op een label te zetten. Om die reden staan verderop in dit document
per toepassing de richtlijnen voor zowel de notatie als de fysieke eisen van
labels gespecificeerd.

## Werkwijze

De werkwijze en verdeling van verantwoordelijkheden bij het labelen is tijdens
de ontwikkeling en opbouw van het museum als volgt:

* Er wordt gewerkt met één type labelprinter.
* Het technische team van Naturalis levert aan de AV installateur een
  professionele labelprinter.
* Naast de printer levert het technische team van Naturalis ook templates voor
  het printen van alle benodigde labels.
* De AV installateur is verantwoordelijk voor het aan de hand van onderstaande
  richtlijnen labelen van alle onderdelen die zij als onderdeel van de opdracht
  aansluiten. In beginsel zijn dat alle componenten (apparaten en kabels) die
  een direct onderdeel zijn van een tentoonstelling, experience of het
  auditorium.
* Het technische team van Naturalis is verantwoordelijk voor het aan de hand van
  onderstaande richtlijnen labelen van alle overige onderdelen. In beginsel zijn
  dat de outlets, wandcontactdozen, patchpunten, switches en servers.
* Zowel de AV installateur als het technische team van Naturalis zijn zelf
  verantwoordelijk voor het (op tijd) bestellen van de door hen benodigde labels.

## Richtlijnen

### Labeling van apparaten

#### Opbouw

#### Fysieke eisen

### Labeling van kabels

`Componenten` in het museum zijn onderling verbonden door middel van
(verschillende typen) kabels. Deze kabels dienen van labels te worden voorzien
om zo, zonder dat de kabel gevolgd hoeft te worden, ter plekke te kunnen zien
van en naar welk component een kabel loopt. Daarnaast dient de labeling van
kabels de vervanging van componenten te vergemakkelijken / versnellen.

#### Opbouw

De opbouw van de tekst op een `Label` die wordt toegepast op een kabel is:

`<naamcomponent>.<naamvariabele>:<waardevariabele>`

Voor de teksten van deze `Labels` gelden de volgende regels:

* Heeft een maximale lengte van 56 karakters
* Bevat bij het uitschrijven op één regel altijd een punt (`.`) en een dubbele
  punt (`:`). Wanneer de tekst te lang is voor één regel dan wordt de punt
  vervangen door een linebreak.
* Het deel voor de punt bestaat uit de naam van het `Component` waar naar wordt
  verwezen.
* Het deel tussen de punt en de dubbele punt bestaat uit de naam van de
  variabele.
* Het deel na de dubbele punt bestaat uit de waarde van de variabele.

Voorbeeld: `animalkeeper-cmp-1.nic:eth0`

Voor kabellabels die verwijzen naar de hierboven bedoelde 'overige componenten',
zoals `Wandcontactdozen` en `Outlets` gelden afwijkende regels:

* Heeft een maximale lengte van 56 karakters
* Bevat altijd een dubbele punt (`:`).
* Het deel voor de dubbele punt bestaat uit het type `Component`.
* Het deel na de dubbele punt bestaat uit de naam van het `Component`.

Voorbeeld: `outlet:B2.D24`

Kabels worden op de volgende plaatsen van labels voorzien:

* In de nabijheid van beide componenten
* Boven een eventuele doorvoer in de vloer

Op al deze plekken dient een kabel van twee labels te worden voorzien. Het label
dat zich het dichtst bij component A bevindt refereert aan dat component en het
label dat zich het dichtst bij component B bevindt refereert daaraan. In [dit
diagram](https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Labels.html#Uhttps%3A%2F%2Fdrive.google.com%2Fa%2Fnaturalis.nl%2Fuc%3Fid%3D1yHieQT567oCd_ZBZ8qTfL7mGpYjQrG3g%26export%3Ddownload)
is deze werkwijze gevisualiseerd.

#### Fysieke eisen

Voor alle kabels met een beperkte dikte, waaronder in ieder geval UTP kabels en
reguliere power kabels, worden zogeheten
[wikkellabels](http://www.altec.nl/ttp-24x12x36mm-wikkellabel-4-rij) (of:
Self-Laminating Wire Wraps) gebruikt.

Voor kabels met een zeer beperkte dikte, zoals USB-kabels of sommige
speakerkabel worden in overleg zogeheten
[T-labels](http://www.altec.nl/ttpft-30x10mm-vlaglabel-t-model) of [Wire
Tags](http://www.altec.nl/altec-wire-tag-a310-22-9x5-2mm-wit-0-25-0-75mm)
gebruikt.

### Labeling van outlets en wandcontactdozen

#### Opbouw

De labels op outlets en wandcontactdozen bevatten simpelweg de naam van die
componenten.

Voorbeeld: `B2.D24`

#### Fysieke eisen

Het labelen van `Outlets` wordt uitgevoerd door de bouwkundig installateur.
Hiervoor worden (naar verwachting) resopal graveerplaatjes gebruikt.

De wandcontactdozen dienen te worden gelabeld met een qua uiterlijk en kwaliteit
betreft vergelijkbaar alternatief in de vorm van [EPREP (Engravement Plate
Replacement) labels](http://www.altec.nl/labels/alternatief-voor-resopal).
