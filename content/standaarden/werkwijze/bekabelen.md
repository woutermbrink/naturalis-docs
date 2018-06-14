---
title: "Bekabelen"
date: 2018-06-06T11:09:51+02:00
draft: true
weight: 40
---

In dit document worden de uitgangspunten, eisen en wensen beschreven ten aanzien
van (met name interne) bekabeling in het museum. Dit bestaat uit de onderdelen:

* Aansluiting op de gebouw gebonden installaties zoals netwerk & electra
* Doorvoeren van kabel door de computervloer
* Het gebruik van stekkerdozen
* Meubel inrichting

## Algemene eisen

Ten aanzien van het gebruik van het gebruik van kabels gelden een aantal
algemene eisen:

* De toegepaste kabels dienen geschikt te zijn voor het doel waarvoor ze
  gebruikt worden.
* De toegepaste kabels dienen van deugdelijke kwaliteit te zijn.
* Kabels die digitale of analoge signalen vervoeren en voedingskabels, of kabels
  waartussen overspraak ongewenst is dienen bij montage gescheiden te worden
  gerouteerd.
* Kabels in de tentoonstellingszalen dienen zo goed mogelijk te worden
  weggewerkt.

Voor specifieke eisen die worden gesteld aan kabels wordt verwezen naar de
[technische standaarden]({{< relref "standaarden/technisch/_index.md" >}}).

## Gebouwvoorzieningen

In het museumgebouw zijn de volgende voorzieningen aanwezig:

* De zalen zijn voorzien van wandcontactdozen (WCD's) en (data)outlets.
* Op de vloer is een grid aangebracht waarbij er om de drie meter twee
  wandcontactdozen en één dataoutlet beschikbaar zijn.
* Om de drie meter is aan het plafond  een bouwkundige ligger met een open
  structuur aanwezig. Om de 6 meter hangen daar een kabelgoot en spanningsrail
  tussen: ![Spanningsrail en kabelgoot](../spanningsrailenkabelgoot.png)
* De wandcontactdozen worden per 9 paar in één groep geschakeld.
* Vanaf een afstand (in de serverruimte) kunnen de groepen afzonderlijk aan- en
  uitgeschakeld worden.

Een overzicht van alle zalen en de bijgehorende werktekeningen met WCD's,
dataoutlets, (werk- en nood)lichtvoorzieningen op zowel de vloer als aan het
plafond [vind je
hier](https://docs.google.com/spreadsheets/d/1l6hu_3QlfZqYrP4A1FpMCqkEZDcGi0bdYCpZoE8BR2Q/edit#gid=0)
(doorgeven Google account vereist).

## Aansluiting infra

Bij het aansluiten van componenten op een WCD of een netwerk outlet moet het WCD
of outlet nummer worden geregistreerd. De wijze van registratie staat [hier
beschreven]({{< relref
"documenteren.md#aanleveren-informatie-over-outlets-en-wcd-s" >}}).


### WCD

Op basis van het WCD nummer kan Naturalis configureren of de groep wel of niet
moet worden geschakeld en zien wat de impact is wanneer een bepaalde groep wordt
geschakeld of uit valt. Ook kan er op deze manier rekening worden gehouden met
de maximale belasting van een stroomgroep.

### Outlet

Het technisch team van Naturalis moet weten welk apparaat is aangesloten op
welke outlet, zodat de juiste configuratie van het netwerk en de monitoring kan
worden toegepast.

## Kabeldoorvoer

Het volgende is van toepassing op doorvoergaten in de vloer en in de meubels:

* Het is niet toegestaan om vloertegels weg te laten om kabels door te voeren.
* Als een vloertegel wordt aangepast dan moet de belastbaarheid op een andere
  wijze gewaarborgd worden.
* De uiteindelijke opening (incl. doorvoer) moet minimaal een diamenter van 40mm
  hebben, zodat er een schuko-stekker doorheen past. De rand van het gat mag
  niet scherp zijn, dit zou de kabels kunnen beschadigen.
* Omdat de gaten groot zijn, moet er een afdichting gebruikt worden zoals
  borstels, om stof van onder de vloer tegen te houden. De gaten mogen
  uitsluitend aangebracht te zijn op plekken die met de hand te bereiken zijn.
* Doorvoergaten in meubels zijn alleen nodig als deze een dichte onderkant
  heeft. Het mag niet aan de zijkant. De gaten in meubels en gaten in de vloer
  moeten verticaal recht boven elkaar uitkomen.
* Er mogen pas gaten in de vloer gemaakt worden als er de definitieve positie
  bepaald is voor het meubel wat er boven komt. Waar mogelijk betimmering van
  meubels zo plaatsen dat de tegel met kabeldoorvoer eruit getild kan worden.
* Als de verticale ruimte tussen de vloer en een meubel groter is dan 50mm
  (bijv. bij de camper), dan zullen de kabels weggewerkt moeten worden dmv een
  kabelgoot tussen vloer en onderkant interactive.
* Doorvoergaten voor losse prikpunten (zonder meubel erboven) moeten aan de
  zijkant van de tegel worden geplaatst en van een duurzaam materiaal worden
  gemaakt.

Een voorbeeld van een product dat voldoet aan bovenstaande voorwaarden is [deze
vloertegel](https://www.hplsystems.nl/installatieproducten/verhoogde-vloer-systemen/tegeldoorvoer-rvs/3010224-tegeldoorvoer-rvs.htm).
Gewone tegels kunnen waar nodig uitgewisseld worden met tegels waar dit soort
doorvoer op bevestigd is.

## Stekkerdozen

In de meubels van interactives, exhibits etc. zal gebruikt worden gemaakt van
stekkerdozen. Deze zullen door het technische team van Naturalis worden
aangesloten.

De spanning in het museum, dus ook die op de stekkerdozen, wordt vanuit de
museum controller geschakeld. Om de schakeling van de juiste apparatuur te
garanderen en overbelasting van een groep te voorkomen zorgt Naturalis voor de
juiste registratie en labeling van de stekkerdozen. De AV installateur is
verantwoordelijk voor de aanlevering van het benodigde vermogen per functionele
eenheid.

Bij de selectie van stekkerdozen hanteert Naturalis de volgende eisen en wensen:

* De stekkerdoos is geaard.
* De stekkerdoos is voorzien van schroefgaten aan de randen zodat deze
  vastgeschroefd kan worden.
* De stopcontacten in de stekkerdoos moeten schuin staan, zodat je ook meerdere
  haakse stekkers naast elkaar geplaatst kunnen worden.
* Stopcontacten zijn afschermd door middel van klepjes zodat deze zijn
  afgeschermd van stof. Stofstoppers of kinderslotplaatjes zijn niet toegestaan.
* Minimaal 16 ampère (niet 10)
* Stekkerdozen moeten een afschroefbaar snoer hebben, zodat de juiste
  snoerlengte kan worden bevestigd.
* Socket Type: randaarde (type E)
* Het aantal stopcontacten per stekkerdoos is minimaal 4.
* De [IP-waarde](https://nl.wikipedia.org/wiki/IP-code)
  van stekkerdozen is minimaal IP44. Indien (bij wijze van uitzondering) een
  stekkerdoos onder de systeemvloer wordt geplaatst dient deze een IP-waarde van
  IP54 te hebben.
* Kleur: Onder de vloer bij voorkeur geen zwart maar een duidelijk zichtbare
  kleur. In een interactive geen voorkeur. Voor gebruik bij evenementen enkel
  zwart.

Bij het gebruik van stekkerdozen door de AV installateur gelden de volgende
randvoorwaarden:

* Het is in beginsel niet toegestaan stekkerdozen aan te brengen onder de computervloer.
* Per stekkerdoos wordt altijd 1 stopcontact leeg gehouden ten behoeve aan
  onderhoud.
* Het is nooit toegestaan om een stekkerdoos op een andere stekkerdoos aan te
  sluiten.

<!--
Openstaande vraag:

We willen de stekkerdozen voorzien van een relais, waardoor de volgende zaken
NIET in de stekkerdoos aanwezig hoeven te zijn:

* Aan/uit schakelaar
* Lampje (om aan of uit aan te geven)

-->

## Meubel inrichting

Voor zowel het binden als het bevestigen van kabels geldt het volgende:

* Elke kabel moet vervangen kunnen worden.
* Alle kabels moeten beschermd worden tegen beschadigingen door pletten,
  verdraaien, trekken, hitte en vloeistoffen.

### Kabelbinders

* Opgerolde kabels mogen enkel met klitteband worden vastgehouden. Het gebruik
  van tape of tie-wraps is niet toegestaan.
* Eventuele overlengte van kabels moet weggewerkt worden door deze op te rollen.
  Als overlengte niet nuttig is, is de voorkeur dat de overlengte eruit gehaald
  wordt.
* Elke kabel dient apart opgerold te worden, niet alles in één bundel, om te
  voorkoemen dat kabels in de knoop raken.

### Kabelbevestiging

* Kabels dienen door kabelgoten te lopen of aan oppervlaktes bevestigd worden
  zonder de kabel te beschadigen.
* Gebundelde overlengte van kabels mogen niet op de grond liggen, maar dienen op
  rol aan een haakje te hangen.

