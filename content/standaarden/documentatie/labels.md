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
  een direct onderdeel zijn van een tentoonstelling, experience of eventuele
  andere ruimten in het museum.
* Het technische team van Naturalis is verantwoordelijk voor het aan de hand van
  onderstaande richtlijnen labelen van alle overige onderdelen. In beginsel zijn
  dat de outlets, wandcontactdozen, patchpunten, switches en servers.
* Het technische team van Naturalis verleent eerstelijns service op de printers,
  en escaleert wanneer nodig naar de leverancier.
* Zowel de AV installateur als het technische team van Naturalis zijn zelf
  verantwoordelijk voor het (op tijd) bestellen van de door hen benodigde labels.

## Richtlijnen

### Labeling van kabels

`Componenten` in het museum zijn onderling verbonden door middel van
(verschillende typen) kabels. Deze kabels dienen van labels te worden voorzien
om zo, zonder dat de kabel gevolgd hoeft te worden, ter plekke te kunnen zien
van en naar welk component een kabel loopt. Daarnaast dient de labeling van
kabels de vervanging van componenten te vergemakkelijken / versnellen.

#### Opbouw

De opbouw van de tekst op een `Label` is afhankelijk van de volgende situaties:

1. De connector van de kabel past maar op één poort op het apparaat.
1. De connector van de kabel past op meerdere poorten op het apparaat waarbij
   het praktisch niet uitmaakt op welke poort de kabel wordt aangesloten (bijv.:
   een powerkabel aansluiten op één van de poorten in een stekkerdoos).
1. De connector van de kabel past op meerdere poorten op het apparaat waarbij
   het in theorie wél uitmaakt op welke poort de kabel wordt aangesloten (bijv.:
   een videokabel aansluiten op één van de HDMI-poorten van een projector).

In de eerste twee situaties bestaat de tekst op een `Label` uit:

`<naamcomponent>.<naamvariabele>`

Voor de teksten van deze `Labels` gelden de volgende regels:

* Heeft een maximale lengte van 56 karakters
* Bevat bij het uitschrijven op één regel altijd een punt (`.`). Wanneer de
  tekst te lang is voor één regel dan wordt de punt vervangen door een linebreak.
* Het deel voor de punt bestaat uit de naam van het `Component` waar naar wordt
  verwezen.
* Het deel na de punt bestaat uit het type poort waarop de kabel dient te worden
  aangesloten.

Voorbeeld: `stamboom-cmp-1.nic` (De netwerkinterface op een computer van `stamboom`)

In de derde situatie bestaat de tekst uit:

`<naamcomponent>.<naamvariabele>:<waardevariabele>`

Voor de teksten van deze `Labels` gelden de volgende regels:

* Heeft een maximale lengte van 56 karakters
* Bevat bij het uitschrijven op één regel altijd een punt (`.`) en een dubbele
  punt (`:`). Wanneer de tekst te lang is voor één regel dan wordt de punt
  vervangen door een linebreak.
* Het deel voor de punt bestaat uit de naam van het `Component` waar naar wordt
  verwezen.
* Het deel tussen de punt en de dubbele punt bestaat uit het type poort waarop
  de kabel dient te worden aangesloten.
* Het deel na de dubbele punt bestaat uit een aanduiding van de specifieke poort
  waarop de kabel dient te worden aangesloten.

Voorbeeld: `stamboom-prj-1.hdmi:1` (HDMI poort 1 op een projector van `stamboom`)

Voor kabellabels die verwijzen naar de hierboven bedoelde 'overige componenten',
zoals `Wandcontactdozen` en `Outlets` gelden afwijkende regels:

* Heeft een maximale lengte van 56 karakters
* Bevat altijd een dubbele punt (`:`).
* Het deel voor de dubbele punt bestaat uit het type `Component`.
* Het deel na de dubbele punt bestaat uit de naam van het `Component`.

Voorbeeld: `outlet:B2.D24`

Bij het bepalen van de locatie en het aantal labels geldt een onderscheid tussen
twee situaties:

##### Zichtbaar

In deze situatie is vanaf het ene component zichtbaar naar welk ander component de
betreffende kabel loopt.

In deze gevallen voldoet het om aan de kant van component A de kabel te voorzien
van een label dat refereert aan dat component en vice versa bij component B.

##### Niet zichtbaar

In deze situatie is vanaf het ene component NIET zichtbaar naar welk ander
component de betreffende kabel loopt.

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
[P-labels](http://www.altec.nl/ttpft-30x10mm-vlaglabel-t-model) of [Wire
Tags](http://www.altec.nl/altec-wire-tag-a310-22-9x5-2mm-wit-0-25-0-75mm)
gebruikt.

### Labeling van apparaten

Op basis van bovengenoemde uitgangspunten dient bij de labeling van apparaten
rekening gehouden te worden met de volgende zaken:

* De naam van het apparaat, als onderdeel van een functionele eenheid, moet
  duidelijk zijn.
* Het moet duidelijk zijn op welke poort een kabel moet worden aangesloten.
* Het individuele apparaat moet te identificeren zijn.

#### Opbouw

##### Serienummer

Om te beginnen met de laatste eis; apparaten zoals computers, monitoren en
projectoren worden zonder uitzondering door fabrikanten van een label voorzien
met daarop het serienummer (al dan niet met barcode) van het apparaat. Zoals
uitgelegd in [dit document]({{< relref "asset-informatie.md" >}}) dient bij het
serienummer meegeleverd te worden bij de asset informatie en wordt dit nummer
geregistreerd in het asset management systeem. Het door de fabrikant
aangebrachte label met serienummer voldoet daarmee voor het identificeren van
het individuele apparaat.

Mocht een dergelijk label ontbreken dan dient de AV installateur een apparaat te
voorzien van een label met een eigen unieke serienummer. In deze gevallen dient
dit serienummer ook als onderdeel van de asset informatie te worden aangeleverd.

##### Naam

Zoals uitgebreid toegelicht in de [naamgevingsstandaard]({{< relref
"naamgeving.md" >}}) heeft elk apparaat in het museum een unieke naam. Behalve dat
deze naam wordt gebruikt in de configuratie management, documentatie en asset
management systemen moet ook ter plaatse duidelijk zijn om welk apparaat het
gaat. Om die reden wordt elk apparaat dat in het museum wordt ingezet voorzien
van een label met daarop uitsluitend de naam van dat component.

##### Poorten

Bij het aansluiten van een kabel op een apparaat hebben we te maken met de
volgende situatie's:

1. De connector van de kabel past maar op één poort op het apparaat.
1. De connector van de kabel past op meerdere poorten op het apparaat waarbij
   het praktisch niet uitmaakt op welke poort de kabel wordt aangesloten (bijv.:
   een powerkabel aansluiten op één van de poorten in een stekkerdoos).
1. De connector van de kabel past op meerdere poorten op het apparaat waarbij
   het in theorie wél uitmaakt op welke poort de kabel wordt aangesloten (bijv.:
   een videokabel aansluiten op één van de HDMI-poorten van een projector).

Alleen in dit laatste geval is er een noodzaak voor een duidelijke markering van
de betreffende poort. Op de apparaten waarop dit van toepassing is én waarop
niet al een bestaande markering (zoals HDMI-1 en HDMI-2) aanwezig is zal deze
moeten worden aangebracht. Stelregel daarbij is dat per type poort een nummer
wordt gezet. Aan dit nummer wordt op de labeling van de kabels gerefereerd
(bijv. `stamboom-cmp-001.hdmi:1`).

#### Fysieke eisen

##### Serienummer

Bij apparaten waar het serienummer niet door de fabrikant met een label is
aangebracht dient het apparaat van een label te worden voorzien. Dit label bevat
behalve het serienummer zelf ook een ([code
128](https://en.wikipedia.org/wiki/Code_128)) barcode te bevatten. Voor deze
labels worden [wit polyester labels voor
typeplaatjes](http://www.altec.nl/ttp-38x13mm-wit-polyester-2-rij) gebruikt.

Het serienummerlabel wordt in beginsel op de zijde van een apparaat geplakt waar
deze het minste risico loopt om schade op te lopen. Meestal is dat de onderzijde
van het apparaat.

##### Naam

Voor labels met de naam van het apparaat worden eveneens [wit polyester labels
voor typeplaatjes](http://www.altec.nl/ttp-38x13mm-wit-polyester-2-rij)
gebruikt.

Het naamlabel wordt op een dusdanige plek geplakt zodat het label zodat de
zichtbaarheid voor beheerders is geoptimaliseerd.

##### Poorten

Voor het aanbrengen van markeringen van poorten is er afhankelijk van het
apparaat maar zeer beperkt ruimte. In de gevallen waar plaats is voor labels
worden voor poortlabels eveneens [wit polyester
labels](http://www.altec.nl/ttp-10x5mm-wit-polyester-4-rij) gebruikt. Waar dit
niet haalbaar is wordt een markering aangebracht met een [outdoor white of black
marker](https://www.123inkt.nl/Edding-8055-outdoor-marker-wit-4-8055-1-1049-i44449-t475064.html)

De nummering van poorten worden in beginsel per rij van links naar rechts aangebracht.

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
