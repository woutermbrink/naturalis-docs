# Namen

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

In het museum onderscheiden we de volgende typen objecten:

* `Museum`
* `Tentoonstelling`
* `Infrastructuur`
* `Exhibit`
* `Ondersteunend systeem`
* `Component`

De relatie tussen deze objecten is als volgt:

* Een `Museum` bestaat uit één of meerdere `Tentoonstellingen` en een
  `Infrastructuur`
* Een `Tentoonstelling` bestaat uit één of meerdere `Exhibits` en een aantal
  `Ondersteunend systemen`.
* Een `Infrastructuur` bestaat uit één of meerdere `Ondersteunende systemen`.
* Een `Exhibit` bestaat uit één of meerdere `Componenten`.
* Een `Ondersteunend systeem` bestaat uit één of meerdere `Componenten`.

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

* Een `Exhibit` bestaat uit een verzameling van `Componenten`. Het equivalent in
  Ansible voor een dergelijke verzameling is de
  [`group`](http://docs.ansible.com/ansible/latest/glossary.html#term-group).

* Een `Tentoonstelling` bestaat uit een verzameling van `Exhibits`. Het equivalent
  in Ansible is eveneens de [`group`](http://docs.ansible.com/ansible/latest/glossary.html#term-group).
  Omdat `Exhibits` onderdeel van een `Tentoonstelling`, is meer specifiek sprake
  van een `parent group`.

* Het `Museum` is het hoogste niveau in de hiërarchie en bevat daarmee alle overige
  objecten. In Ansible terminologie is het equivalent van het Museum de
  `inventory`. Een inventory bestaat uit een opsomming van hosts (`Componenten`) en
  groups (`Exhibits` en `Tentoonstellingen`).

* `Variabelen` die van toepassing zijn op `Tentoonstellingen`, `Exhibits` en
  `Componenten` in een `Museum` hebben dezelfde naam in Ansible.

![alt text](../afbeeldingen/taxonomiemuseum.png "Taxonomie museum")

## Museum

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

## Tentoonstelling

Per museum, of inventory zijn er één of meerdere `Tentoonstellingen`. Omdat
`Tentoonstellingen` als parent group in Ansible terugkomen en er nooit sprake is
van twee gelijke tentoonstellingen op hetzelfde moment is de opbouw van de naam
als volgt:

`<naamtentoonstelling>`

Regels voor `Tentoonstelling` namen:

* De naam is uniek binnen het `Museum`

Bijvoorbeeld: `trexintown`

## Infrastructuur

Per museum is er één `Infrastructuur`. Deze heeft altijd de naam:
`museuminfra`.

## Exhibit

Per tentoonstelling zijn er één of meerdere `Exhibits`. Elke exhibit is binnen
een `Museum` en binnen een `Tentoonstelling` uniek en vormt functioneel gezien
een eenheid. Exhibits komen daarom ook terug in de functionele ontwerpen van de
tentoonstellingsontwerpers en bouwers. Daarnaast zal de `Exhibit` de eenheid
zijn waar incidentmeldingen en rapportages aan worden gekoppeld.

De opbouw van de naam is daarom simpelweg:

`<naamexhibit>`

Voor de namen van `Exhibits` gelden de volgende regels:

* Is uniek binnen het `Museum`.
* Heeft een maximale lengte van 24 karakters.
* Bestaat uitsluitend uit alfanumerieke karakters.
* Bevat geen hoofdletters.
* Is makkelijk leesbaar en bruikbaar in de mondelinge communicatie.

Voorbeeld: `animalkeeper`

## Ondersteunend systeem

Per `Tentoonstelling` of per `Infrastructuur` zijn er één of meerdere
`Ondersteunende systemen`. De opbouw van de naam is als volgt:

`<naamondersteunend systeem>`

Voor de namen van `Ondersteunende systemen` gelden dezelfde naamgevingsregels
als die van een `Exhibit`.

## Component

Elke `Exhibit` bestaat uit één of meerdere `Componenten`. `Componenten` zijn
het laagste type object in de hiërarchie. Omdat zowel bij de configuratie van de
componenten, als de documentatie en de fysieke aansluiting de samenhang met de
exhibit belangrijk is, is de naamgeving van `Componenten` als volgt:

`<naamexhibit>-<drieletterigeafkortingtypecomponent>-<volgnummer>`

De naam van een `Component` is gedurende de levensloop van het museum niet
noodzakelijkerwijs gekoppeld aan één specifiek stuk hardware. Wanneer
bijvoorbeeld een computer wordt vervangen dan neemt de nieuwe computer de naam
van het `Component` over van de oude computer. Praktisch gezien betekent dit dat
in de Ansible configuratie, het fysieke label op de machine en de hostnaam
worden aangepast bij het vervangen van een computer.

Voor de namen van `Componenten` gelden de volgende regels:

* Is uniek binnen het `Museum`.
* Heeft een maximale lengte van 32 karakters.
* Bevat altijd precies twee afbreektekens.
* Het deel voor het eerste afbreekteken bestaat uit de naam van de `Exhibit` waar het
  `Component` onderdeel vanuit maakt.
* Het deel tussen de twee afbreektekens is altijd drie letters lang en bestaat
  uit één van de hieronder opgesomde afkortingen voor typen `Componenten`.
* Het deel na het tweede afbreekteken is een opvolgnummer [0-999].

Welke typen `Componenten` onderscheiden we?

* Monitor: `mon`
* Computer: `cmp`
* Versterker: `amp`
* Projector: `prj`
* Stekkerdoos: `pwr`
* Lamp: `lmp`

Voorbeeld: `animalkeeper-mon-1`

## Gebouwgebonden voorzieningen

### Outlet

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

### Wandcontactdozen

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

De specificatie van de naamgeving van de switches volgt.

### Labels van kabels


### Labels van onderdelen van componenten


### Labels van componenten



`Componenten` en kabels tussen `Componenten` dienen te worden voorzien
van fysieke labels. Daarnaast zijn er allerlei variabelen van toepassing op de
groepen en objecten in Ansible, die meestal in de vorm van key-value pairs
worden genoteerd.

Voor de namen van `Variabelen` gelden de volgende regels:

* Bestaat uitsluitend uit alfanumerieke tekens of *underscore* (liggend
  streepje).
* Begint altijd met een letter.
* Underscores worden uitsluitend gebruikt om de leesbaarheid tussen twee 
  woorden / delen te vergroten.

Voorbeeld: `http_port`

Voor de waarden van `Variabelen` gelden de volgende regels:

* Strings (stukken tekst) worden in Ansible altijd met dubbele aanhalingstekens
  (") geschreven.

Het uitgangspunt bij de naamgeving van `Labels` is om dezelfde notatie te
hanteren als de notatie in Ansible. Dat betekent dat ze in beginsel bestaan uit
een combinatie van hostname (hetzelfde als `Component`), de naam van een
`Variabele` en de waarde van die `Variabele`.

De opbouw van de tekst op een `Label` is daarom:

<naamcomponent>.<naamvariabele>:<waardevariabele>

Voor de teksten op `Labels` gelden de volgende regels:

* Heeft een maximale lengte van 56 karakters
* Bevat altijd een punt (`.`) en een dubbele punt (`:`).
* Het deel voor de punt bestaat uit de naam van het component waar naar wordt
  verwezen.
* Het deel tussen de punt en de dubbele punt bestaat uit de naam van de
  variabele.
* Het deel na de dubbele punt bestaat uit de waarde van de variabele.

Voorbeeld: `animalkeeper-cmp-1.nic:eth0`

animalkeeper-cmp-1.nic:eth0
animalkeeper-cmp-1.outlet:B2.D24
Self-laminating Wire Wraps

In dit voorbeeld wordt met het label de netwerkinterface (`nic`) genaamd `eth0`
van het `Component` `animalkeeper-cmp-1` aangeduid.



## Dankwoord

Bij het opstellen van deze standaard is gebruik gemaakt van en inspiratie opgedaan
bij:

* De naamconventie van
[Kubernetes](https://github.com/kubernetes/community/blob/master/contributors/design-proposals/architecture/identifiers.md#definitions).
* De [Ansible documentatie](http://docs.ansible.com) over [host en
  groepsnamen](http://docs.ansible.com/ansible/latest/intro_inventory.html) en [namen voor variabelen](http://docs.ansible.com/ansible/latest/playbooks_variables.html#what-makes-a-valid-variable-name).

