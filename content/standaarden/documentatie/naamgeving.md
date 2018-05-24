---
title: "Naamgeving"
date: 2018-05-23T14:33:22+02:00
draft: true
---

## Algemeen

De naamconventie in dit document dient de volgende doelen:

* Het geven van een unieke identifier aan objecten (door middel van een UUID)
  gedurende de hele levensloop van het museum.
* Het geven van een unieke naam aan objecten (door middel van een naam)
  binnen de museum infrastructuur.
* Het voorzien van unieke, voor mensen begrijpelijke en leesbare namen die
  gebruikt kunnen worden in API opdrachten, configuratie bestanden (bijv.
  Ansible) en fysieke labels in het museum.
* Het automatisch kunnen genereren van DNS namen en hostnamen op basis van de
  namen.
* Het gebruik kunnen maken van [patterns in
  Ansible](http://docs.ansible.com/ansible/latest/intro_patterns.html) op basis van namen.

## Definities

Om deze doelen te bereiken hanteren we de volgende regels:

* `UUID`'s (`universally unique identifiers`) zijn niet-lege, systeem-gegenereerde
  waarden die uniek zijn in zowel tijd als plaats, met als doel om een onderscheid 
  te kunnen maken tussen historische exemplaren van vergelijkbare objecten. 

  Een `UUID` bestaat uit een 128
  bit gegenereerde waarde, zoals gespecificeerd in
  [rfc4122](http://www.ietf.org/rfc/rfc4122.txt).

  Een voorbeeld van een `UUID` is: `f2b5fa22-7cdf-4b30-af26-be81b673e56d`.

* `Naam`: Een niet-lege string die, op een bepaald moment in de tijd, uniek
  is binnen de scope van het museum.

  Namen voldoen in ieder geval aan de voorwaarden voor
  labels in domeinnamen (zie
  [rfc1035](http://www.ietf.org/rfc/rfc1035.txt)/
  [rfc1123](http://www.ietf.org/rfc/rfc1123.txt)).
  Dat betekent dat ze bestaan uit een alphanumerieke string van (a-z en 0-9) met
  een maximale lengte van 63 karakters. De '-' (een
  [afbreekteken](https://nl.wikipedia.org/wiki/Afbreekteken) in goed
  Nederlands), is daarbij overal toegestaan, behalve aan het begin en aan het
  eind.

  Omdat domeinnamen hoofdletterongevoelig zijn, maar bijv. Ansible niet, wordt
  in het museum de standaard gehanteerd dat namen altijd lowercase worden geschreven.

  De specifieke opbouw van namen verschilt per type object en staat hieronder
  toegelicht.

## Datastructuur

### Typen objecten

De indeling van het museum in objecten is gebaseerd op de
[basisstructuur](https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Basisstructuur%20asset%20management.html#Uhttps%3A%2F%2Fdrive.google.com%2Fa%2Fnaturalis.nl%2Fuc%3Fid%3D1ACQXokXSEinMQh4xevBAxH_Ommmr0MGV%26export%3Ddownload)
en
[basisclassificatie](https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Classificatie%20assets.html#Uhttps%3A%2F%2Fdrive.google.com%2Fa%2Fnaturalis.nl%2Fuc%3Fid%3D1PuhYO4GAXsBrJNIiNC7NqwbjNy6fs1dF%26export%3Ddownload) voor asset management binnen Naturalis. Deze
structuur gaat uit van drie hoofdklassen / niveau's:

* `Groepen`
* `Functionele eenheden`
* `Componenten`

De relatie tussen deze objecten is als volgt:

* Een `Component` hoort altijd bij één `Functionele eenheid`.
* Een `Functionele eenheid` hoort altijd bij één `Groep`.
* Een `Groep` valt ten hoogste onder één andere groep.

Voor elk niveau dienen, afhankelijk van de toepassing, subklassen te worden
gedefinieerd. In het museum onderscheiden we de volgende subklassen:

* Groepen:
  - `Museum`
  - `Tentoonstelling`
  - `Experience`
  - `Infrastructuur`

* Functionele eenheden:
  - `Interactive`
  - `Exhibit`
  - `Signage`
  - `Decor`
  - `Show`
  - `Faciliteit`

* Componenten (concept):
  - `Monitor`
  - `Computer`
  - `Versterker`
  - `Projector`
  - `Lamp`
  - `Stekkerdoos`

De relatie tussen deze objecten is als volgt:

* Een `Museum` bestaat uit één of meerdere `Tentoonstellingen`, `Experiences` en
  een `Infrastructuur`.
* Een `Tentoonstelling` of `Experience` bestaat uit één of meerdere functionele
  eenheden waaronder `Exhibits` en `Interactives`.
* Een `Infrastructuur` bestaat uit één of meerdere `Faciliteiten`.
* `Functionele eenheden` zoals `Interactives` bestaan uit één of meerdere
  `Componenten`.

Alle objecten in het museum worden voorzien van een unieke `Naam` en `UUID`.

Voor attributen die niet noodzakelijkerwijs uniek zijn worden `Variabelen`
(in de vorm van key-value pairs) gebruikt.

### Verhouding met Ansible datastructuur

Het museum en alle objecten in het museum zullen worden beheerd door middel van
Ansible. De verschillende typen objecten verhouden zich als volgt tot de data
typen in Ansible:

* Het `Component` is het niveau waarop daadwerkelijke computers, beamers en
  andere (al dan niet via het netwerk bereikbare) apparatuur zich bevindt. Dit
  correspondeert met wat in Ansible als
  [`host`](http://docs.ansible.com/ansible/latest/glossary.html#term-host)
  wordt aangeduid.

* Een `Functionele eenheid` zoals een `Interactive` bestaat uit een verzameling van
  `Componenten`. Het equivalent in Ansible voor een dergelijke verzameling is de
  [`group`](http://docs.ansible.com/ansible/latest/glossary.html#term-group).

* Een `Tentoonstelling` of `Infrastructuur` bestaat uit een verzameling van
  `Functionele eenheden`. Het equivalent in Ansible is eveneens de
  [`group`](http://docs.ansible.com/ansible/latest/glossary.html#term-group).
  Omdat `Interactives` en `Exhibits` onderdeel zijn van een `Tentoonstelling`,
  is meer specifiek sprake van een `parent group`.

* Het `Museum`-object is binnen het museum het hoogste niveau in de hiërarchie
  en bevat daarmee alle overige objecten. In Ansible terminologie is het
  equivalent van het Museum de `inventory`. Een inventory bestaat uit een
  opsomming van hosts (`Componenten`) en groups (zoals `Interactives` en
  `Tentoonstellingen`).

* `Variabelen` die van toepassing zijn op `Tentoonstellingen`, `Exhibits` en
  `Componenten` in een `Museum` hebben dezelfde naam in Ansible.

![alt text](/images/taxonomiemuseum.png "Taxonomie museum")

## Groepen

### Museum

Hoewel er over het algemeen slechts sprake zal zijn van één museum moet wel
rekening gehouden worden met de volgende zaken:

* Er kan sprake zijn van reizende tentoonstellingen, die op dezelfde wijze
  beheert, maar strikt genomen onderdeel zijn van een apart museum (bijv. 'Naturalis
  on Tour').

* Er kan sprake zijn van meerdere omgevingen die corresponderen aan het stadium
  van ontwikkeling (bijv. `productie` en `staging`).

Om te zorgen dat de naam van het `Museum` (en daarmee de `inventory` in Ansible) uniek is,
is de opbouw van de naam als volgt:

`<naammuseum>-<ontwikkelstadium>`

In het geval van de productie-omgeving van het museum van Naturalis is de naam bijvoorbeeld:

`naturalis-productie`

### Tentoonstelling

Per museum, of inventory zijn er één of meerdere `Tentoonstellingen`. Omdat
`Tentoonstellingen` als parent group in Ansible terugkomen en er nooit sprake is
van twee identieke tentoonstellingen op hetzelfde moment is de opbouw van de naam
als volgt:

`<naamtentoonstelling>`

Regels voor `Tentoonstelling` namen:

* Is uniek binnen het `Museum`.
* Heeft een maximale lengte van 22 karakters.
* Bestaat uitsluitend uit alfanumerieke karakters.
* Bevat geen hoofdletters.
* Is duidelijk en bruikbaar in de mondelinge communicatie.

Bijvoorbeeld: `trexintown`

### Experience

Naast `Tentoonstellingen` zijn er in het museum ook `Experiences`. Dit zijn
specifieke delen van het museum waar sprake is van een hoge mate aan technische
complexiteit. De regelgeving voor de namen van `Experiences` is hetzelfde als
die voor `Tentoonstellingen`. De opbouw van de naam is daarmee:

`<naamexperience>`

### Infrastructuur

Per museum is er één `Infrastructuur`. Algemene faciliteiten zoals kassasystemen
behoren tot deze `Infrastructuur`. Deze heeft altijd de naam: `museuminfra`.

## Functionele eenheden

`Functionele eenheden` zijn de klasse objecten in het museum die centraal staan
bij de afhandeling van incidenten, rapportages over incidenten en documentatie.
In het museum worden (vooralsnog) de volgende functionele eenheden onderscheiden:
* `Interactive`
* `Exhibit`
* `Signage`
* `Decor`
* `Show`
* `Faciliteit`

Voor alle `Functionele eenheden` binnen het `Museum` gelden de volgende
naamgevingsregels:

* Is uniek binnen het `Museum`.
* Heeft een maximale lengte van 22 karakters.
* Bestaat uitsluitend uit alfanumerieke karakters.
* Bevat geen hoofdletters.
* Is duidelijk en bruikbaar in de mondelinge communicatie.

### Interactive

`Interactives` zijn eenheden waarbij de nadruk ligt op ervaren (in de vorm van
interactie: games, video's, knopje plaatje). Elke interactive is binnen een
`Museum` en binnen een `Tentoonstelling` uniek. De opbouw van de naam is daarom
simpelweg:

`<naaminteractive>`

Voorbeeld: `animalkeeper`

### Exhibit

`Exhibits` zijn eenheden waarbij de nadruk ligt op vertonen (in de vorm van
collectie: vitrines, panelen etc.) Elke `Exhibit` is uniek binnen een `Museum` en
`Tentoonstelling`. De opbouw van de naam is daarom simpelweg:

`<naamexhibit>`

Voorbeeld: `pofadder`

### Signage

`Signage` zijn eenheden waarbij de nadruk ligt op informeren (tekstborden,
zaalnamen, bewegwijzering etc.) Elke `Signage` is uniek binnen een `Museum` en
`Tentoonstelling`. De opbouw van de naam is daarom simpelweg:

`<naamsignage>`

Voorbeeld: `slangenzaalbord`

### Decor

`Decor` zijn eenheden waarbij op statische wijze wordt bijgedragen aan
tentoonstellingsbrede sfeer (gordijnen, behang, algemene casco). Elk `Decor` is
uniek binnen een `Museum` en `Tentoonstelling`. De opbouw van de naam is daarom
simpelweg:

`<naamdecor>`

Voorbeeld: `gordijnengif`

### Show

`Shows` zijn eenheden waarbij op actieve wijze bij wordt gedragen aan
tentoonstellingsbrede sfeer (lichtshow, soundscapes etc.) Elke `Show` is uniek
binnen een `Museum` en `Tentoonstelling`. De opbouw van de naam is daarom
simpelweg:

`<naamshow>`

Voorbeeld: `showgif`

### Faciliteit

`Faciliteiten` zijn eenheden waarbij de nadruk ligt op ondersteunen. Elke `Show`
is uniek binnen een `Museum` en `Tentoonstelling`. De opbouw van de naam is
daarom simpelweg:

`<naamfaciliteit>`

Voorbeeld: `scanzuilen`

## Componenten

### Museum specifieke componenten

Elke `Functionele eenheid` bestaat uit één of meerdere `Componenten`.
`Componenten` zijn het laagste type object in de hiërarchie. Omdat zowel bij de
configuratie van de componenten, als de documentatie en de fysieke aansluiting
de samenhang met de `Functionele eenheid` belangrijk is, is de naamgeving van
`Componenten` in het museum (tenzij anders aangegeven) als volgt:

`<naamfunctioneleeenheid>-<drieletterigeafkortingtypecomponent>-<volgnummer>`

De naam van een `Component` is gedurende de levensloop van het museum niet
noodzakelijkerwijs gekoppeld aan één specifiek stuk hardware. Wanneer
bijvoorbeeld een computer wordt vervangen dan neemt de nieuwe computer de naam
van het `Component` over van de oude computer. Praktisch gezien betekent dit dat
in de Ansible configuratie, het fysieke label op de machine en de hostnaam
worden aangepast bij het vervangen van een computer.

Voor de namen van deze `Componenten` gelden de volgende regels:

* Is uniek binnen het `Museum`.
* Heeft een maximale lengte van 30 karakters.
* Bevat altijd precies twee afbreektekens.
* Het deel voor het eerste afbreekteken bestaat uit de naam van de `Functionele
  eenheid` waar het `Component` onderdeel vanuit maakt.
* Het deel tussen de twee afbreektekens is altijd drie letters lang en bestaat
  uit één van de hieronder opgesomde afkortingen voor typen `Componenten`.
* Het deel na het tweede afbreekteken is een opvolgnummer [0-999].

Welke typen museumspecifieke `Componenten` worden er onderscheiden?

* Monitor: `mon`
* Computer: `cmp`
* Versterker: `amp`
* Projector: `prj`
* Stekkerdoos: `pwr`
* Lamp: `lmp`

Voorbeeld: `animalkeeper-mon-1`

### Overige componenten

Naast de bovengenoemde componenten is de museuminfrastructuur afhankelijk van
een aantal 'externe' voorzieningen. Deze voorzieningen behoren strikt
genomen niet tot de museuminfrastructuur maar vormen wel belangrijke
bouwstenen. Hieronder staan deze voorzieningen en hun naamgeving toegelicht.

#### Outlet

Met `Outlets` worden de fysieke aansluitpunten bedoeld die zijn aangebracht in
de zalen en overige ruimten en waarop UTP-kabels met RJ-45 connectoren kunnen
worden aangesloten.

Bij het bepalen van de opbouw van de namen van `Outlets` zijn de volgende
uitgangspunten gehanteerd:

* De administratieve last in de vorm van een patchlijst moet minimaal zijn.
  Idealiter is er buiten de switchconfiguratie überhaupt geen noodzaak voor een
  dergelijke (foutgevoelige) administratie.
* In principe worden alle datapunten gepatched.

De naamgeving van `Outlets` is als volgt:

`<lettertechnischeruimte><nummerpatchkast>.<letterpatchpaneel><volgnummer
outlet>`

Voor de namen van `Outlets` gelden de volgende regels:

* Heeft een maximale lengte van 6 karakters.
* De letter van de technische ruimte bestaat altijd uit één hoofdletter.
* Het nummer van de patchkast bestaat altijd uit één cijfer.
* De letter van het patchpaneel bestaat altijd uit één hoofdletter.
* De volgnummers van de outlets bestaan altijd uit twee cijfers en lopen van 01
  t/m 48.

Voorbeeld: `B2.D24`

Op basis van deze naamgeving weet je op basis van de naam op welke poort in
welke patchpaneel in welke kast in welke technische ruimte de outlet uitkomt.
Omdat alle outlets worden gepatched en bij de naamgeving van de switches wordt
gebaseerd op dezelfde uitgangspunten is het niet nodig om een patchlijst bij te
houden.

De outlet in bovenstaand voorbeeld is aangesloten op poort `24` in patchpaneel
`D` in kast 2 in de SER `B`.

#### Wandcontactdozen

In het museum, onderverdeeld in de zalen voor de tentoonstellingen en de overige
ruimten, zijn (meestal in de vorm van een grid) een grote hoeveelheid
wandcontactdozen beschikbaar waarmee de diverse componenten van stroom kunnen
worden voorzien.

Bij het bepalen van de opbouw van de namen van `Wandcontactdozen` (kort: `WCD`'s)
zijn de volgende uitgangspunten gehanteerd:

* Op basis van de naam van een wandcontactdoos wil je weten in welke eindgroep
  de wandcontactdoos staat en met welk relais de wantcontactdoos wordt
  geschakeld.
* De naamgeving moet aansluiten bij de bij de bouw van de E-installatie
  gehanteerde nummering.
* Elke 'eindgroep' wordt geschakeld met één relais.

De codering die vanuit de bouw wordt gehanteerd voor groepnummers (eindgroepen)
is als volgt:

`<afkortingtypeeindgroep><volgnummer>`

In de E-installatie worden de volgende type eindgroepen en afkortingen
onderscheiden:

* Licht: `L`
* Noodlicht: `NL`
* Kracht: `K`
* Noodkracht: `NK`

Het volgnummer bestaat altijd uit één of meerdere cijfers en loopt van 1 t/m 99.

Voorbeeld: `L3`

Daarnaast wordt voor de kastcode van de verdeelinrichtingen (elke zaal heeft één
verdeelkast) de volgende codering gebruikt:

`LK<volgnummer>`

Het volgnummer bestaat altijd uit één of meerdere cijfers en loopt van 1 t/m 99.

Voorbeeld: `LK2`

Op lasdozen en kabels wordt de volgende codering gehanteerd:

`<kastcode>-<eindgroepcode>`

Voorbeeld: `LK2-L3`

De wandcontactdozen krijgen vanuit de installateur geen aparte codering. We
willen echter wel bij kunnen houden welke apparatuur op welke wandcontactdozen
is aangesloten. We hanteren daarom, in navolging op de door de installateur
gehanteerde codering, de volgende naamgeving voor wandcontactdozen:

`<kastcode>-<eindgroepcode>-<volgnummer>`

Voor de namen van `WCD's` gelden de volgende regels:

* Heeft een maximale lengte van 12 karakters.
* Het volgnummer bestaat altijd uit één of meerdere cijfers en loopt van 1 t/m
  99.

Voorbeeld: `LK1-L51-9`

### Switches

Met `Switches` worden de netwerkswitches bedoeld waarop datapunten worden
gepatched en waarmee het museum van netwerkconnectiviteit wordt voorzien.

Er zijn drie verschillende typen switches:
* Spine switch: `spine`
* Leaf switch: `leaf`
* Out of band switch: `oob`

Voor alle drie de verschillende typen switches is de algemene opbouw van de naam
hetzelfde:

`<naamnetwerkdeel>-<typecomponent>-<identifier>`

Het netwerkdeel is de `Functionele eenheid` waarvan de switches (de
`Componenten`) deel uitmaken, bijvoorbeeld `netdw2` voor het netwerk op de
Darwinweg 2.

Per type switch verschilt het `identifier` deel van de naam:

* Afhankelijk van de situatie verschilt het aantal spine switches. In het
  campusnetwerk op de Darwinweg worden twee spine switches voorzien waarbij op
  één van de spine switches alle glasvezelverbindingen over de A-feed zijn
  aangesloten, en één op de B-feed. De identifier is in het geval van spine
  switches om die reden een 'volgletter'.

  Voorbeeld: `netdw2-spine-b`

* Voor de leaf switches dient het identifier deel aan te sluiten op de
  naamgeving van de outlets. Uitgangspunt is dat op basis van de outletnaam
  vastgesteld kan worden op welke switch een outlet is gepatcht. De identifier
  van een leaf switch is daarom als volgt opgebouwd:

  `<lettertechnischeruimte><nummerpatchkast><letterpatchpaneel>`

  Voorbeeld: `netdw2-leaf-b2d`

* Voor out of band switches geldt dat er per technische ruimte in principe
  altijd maar één out of band switch nodig is. De identifier van een out of band
  switch is daarom altijd:

  `<lettertechnischeruimte>`

  Voorbeeld: `netdw2-oob-e`

## Variabelen en labels

### Variabelen

Bij het beheer en configuratie van de `Componenten` en `Functionele eenheden` in
het museum zullen per object variabelen worden bepaald en kenmerken
geadministreerd. Dit kan variëren van het volume van de audio van een apparaat
tot bijvoorbeeld een MAC-adres of leveranciersgegevens.

Deze variabelen of kenmerken van een apparaat komen terug op veel plekken:

* Het asset management systeem (Topdesk)
* Het config management systeem (Ansible)
* De documentatie
* De labels op `Componenten` en kabels.

Uitgangspunt bij de naamgeving van `Variabelen` of meer algemeen kenmerken van
onderdelen in het museum is dat in alle bovengenoemde systemen en plekken
dezelfde namen worden gebruikt.

In Ansible worden variabelen voor hosts en groups meestal in de vorm van
key-value pairs genoteerd, bijvoorbeeld:

```yaml
http_port: 80
gather_facts: no
```

Daarnaast is het mogelijk om in Ansible dictionaries te gebruiken om keys en
values te koppelen:

```yaml
foo:
  field1: one
  field2: two
```

Op basis hiervan kun je op de volgende manier refereren aan een specifiek veld:

```yaml
foo['field1']
foo.field1
```

Aangezien Ansible de meest stringente regels heeft ten aanzien van namen voor
`Variabelen` hanteren we de Ansible-regels als standaard. Dat betekent dat voor
de namen van `Variabelen` de volgende regels gelden:

* Bestaat uitsluitend uit alfanumerieke tekens of *underscore* (liggend
  streepje).
* Begint altijd met een letter.
* Underscores worden uitsluitend gebruikt om de leesbaarheid tussen twee woorden
  / delen te vergroten.

Voorbeeld: `http_port`

Voor de waarden van `Variabelen` gelden de volgende regels:

* Strings (stukken tekst) worden in Ansible altijd met dubbele aanhalingstekens
  (") geschreven.

### Labels

Het uitgangspunt bij het gebruik van `Labels` is om dezelfde notatie te
hanteren als de notatie van `Variabelen` in Ansible. Dat betekent dat ze in
beginsel bestaan uit een combinatie van hostname (hetzelfde als `Component`), de
naam van een `Variabele` en de waarde van die `Variabele`.

Er worden echter op verschillende plaatsen in het museum labels voorzien. Het is
niet altijd praktisch mogelijk of van toegevoegde waarde om al die informatie op
een label te zetten. Hieronder staan per toepassing de regels voor `Labels`
gespecificeerd.

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

## Dankwoord

Bij het opstellen van deze standaard is gebruik gemaakt van en inspiratie opgedaan
bij:

* De naamconventie van
[Kubernetes](https://github.com/kubernetes/community/blob/master/contributors/design-proposals/architecture/identifiers.md#definitions).
* De [Ansible documentatie](http://docs.ansible.com) over [host en
  groepsnamen](http://docs.ansible.com/ansible/latest/intro_inventory.html) en [namen voor variabelen](http://docs.ansible.com/ansible/latest/playbooks_variables.html#what-makes-a-valid-variable-name).

