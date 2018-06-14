---
title: "Bouwtechnische tekeningen"
date: 2018-05-23T14:32:17+02:00
draft: false
weight: 17
---

## Algemeen

Technische tekeningen zijn onder te verdelen in:

* werktuigbouwkundige tekeningen
* elektrotechnisch tekeningen of schematekeningen
* bouwkundige tekeningen

Werktuigbouwkundige & elektrotechnische tekeningen of schematekeningen behandelen we in een andere pagina. 

In het onderstaande document behandelen we de verschillende elementen op een bouwtechnische tekening, de gewenste uitgangspunten, regels, normen en standaarden en stellen we vast in welk formaat we deze willen opslaan en tonen.

## Standaard

* Conform: NEN 114, NEN 128-50, NEN 47 & NEN-ISO 128-23 (nl)
* Bevat: plattegrond, doorsnede, gevelaanzicht & isometrische projectie in de
  vorm van een exploded view.
* Vermelding van: Titel, schaal & tekenfase (VO,DO,bestek,
  werk of revisie).
* Tekentechnieken & Layout: Als leidraad voor maataanduiding, lijntypen, lijndikte,
  bijschriften etc. hanteren we de regels en standaarden zoals beschreven op de
  bouwtechnisch tekenen wiki van de opleiding Bouwkunde aan de TU Delft. Links
  verderop in dit document.
* Bestandsformaat 3D tekeningen: bronbestand & IFC
* Bestandsformaat 2D tekeningen: bronbestand & conversie naar DXF of DWG.
* Weergave DXF & DWG: Met behulp van dwg2maptiles of dxf2maptiles genereren we tiles,
  met behulp van leaflet.js en de plugin leaflet.Fullscreen tonen we deze op de
  documentatie website. Daarnaast bieden we een download link aan naar het
  bronbestand en het DXF / DWG bestand.

## Argumentatie

### Inhoud

#### Tekenfasen

De volgende standaard tekenfasen zijn gebruikelijk:

* Voorlopig ontwerp (VO)
* Definitief ontwerp (DO)
* Bestek
* Werk
* Revisie

{{% notice note %}}
>"Het is van eminent belang voor uitbreidingen en het storingzoeken in de gebouwde installatie dat de tekeningen tijdens en na de bouw worden bijgewerkt. Deze bijgewerkte tekeningen noemt men revisietekeningen, ook wel "as built" tekeningen." Bron: [Technisch_tekenen: Elektrotechnisch tekenen](https://nl.wikipedia.org/wiki/Technisch_tekenen#Elektrotechnisch_tekenen)
{{% /notice %}}

Meer info: [Bouwtechnisch_Tekenen:_Tekenfasen](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekenfasen)

#### Tekentechnieken

Zie: [Bouwtechnisch_Tekenen:_Tekentechnieken](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken)

##### Schaal

Eén van de onderstaande standaard schalen is gebruikelijk:

* **1:10000 - 1:5000 - 1:2000** Stedenbouwkundige Tekeningen
* **1:1000** Stedenbouwkundige Tekeningen & Situatie Tekeningen
* **1:500** Situatie Tekeningen
* **1:200** Grote Gebouwen, Overzichtstekeningen (bv. woningblokken)
* **1:100** Gebouwen
* **1:50** Kleine Gebouwen (bv. woningen) & Fragmenten van Gebouwen
* **1:20** Fragmenten van Gebouwen
* **1:10** Meubels, Kasten, Trappen, e.d. Details, Constructieve Knooppunten
* **1:5** Details
* **1:2** Details, vanwege verwarring met de schaal 1:1 wordt deze vaak afgeraden
* **1:1** Details

Bron: [Bouwtechnisch_Tekenen:_Tekentechnieken - Schaal](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken#Schaal)

##### Gebouwdelen

> "Onder gebouwdelen worden muurdoorbrekingen zoals ramen en deuren verstaan, maar
> ook trappen en meubilair. Over de weergave hiervan bestaan afspraken en in NEN
> 114 worden vele hiervan beschreven. De informatie die in een tekening verstrekt
> wordt, hangt af van de bouwfase en de schaal."

Bron: [Tekenen:_Tekentechnieken - Gebouwdelen](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken#Gebouwdelen)

##### Materiaal

> "Alle materiaal, dat in een tekening wordt doorgesneden, moet een arcering
> krijgen. Dit verduidelijkt niet alleen de tekening, maar geeft ook informatie
> over de toegepaste materialen. Als doorsneden van hetzelfde materiaal aan elkaar
> grenzen, kunnen onduidelijkheden ontstaan. Volgens NEN 128-50 moet de arcering
> dan in verschillende richtingen lopen. In tekeningen waarin zowel bestaand als
> nieuw werk voorkomt, kan het bijdragen aan de leesbaarheid van de tekening om
> het bestaande werk dunner, gestippeld of grijs te tekenen. Soms is de schaal van
> een tekening zo klein, dat de juiste arcering niet aangebracht kan worden. In
> dat geval wordt de doorsnede niet gearceerd."

...

> "Arceringen in een bouwkundige tekening dienen te worden getekend volgens NEN
> 47. Omdat deze arceringen gestandaardiseerd zijn, en zo ook in de bouw bekend
> staan, hoeft niet nadrukkelijk worden aangegeven in een renvooi wat de
> arceringen betekenen. Als je echter van de standaard afwijkt of daarop een
> arcering toevoegt dien je dat wel nadrukkelijk aan te geven in een renvooi. De
> renvooi komt op de bouwkundige tekening boven de identificatiestrook."

Bron: [Bouwtechnisch_Tekenen:_Tekentechnieken - Materiaal](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken#Materiaal)

##### Maataanduiding

Zie: [Bouwtechnisch_Tekenen:_Tekentechnieken - Maataanduiding](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken#Maataanduiding)

##### Lijntypen

> "In bouwkundige tekeningen worden voor bepaalde toepassingen steeds dezelfde
> lijntypen gebruikt. De afspraken die hierover zijn gemaakt, zijn na te lezen in
> NEN-ISO 128-23 (nl)."

Bron: [Bouwtechnisch_Tekenen:_Tekentechnieken - Lijntypen](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken#Lijntypen)

##### Lijndikte

Zie: [Bouwtechnisch_Tekenen:_Tekentechnieken - Lijndikte](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken#Lijndikte)

##### Bijschriften

Zie: [Bouwtechnisch_Tekenen:_Tekentechnieken - Bijschriften](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekentechnieken#Bijschriften)


#### Tekensystemen

Er worden twee typen projecties onderscheiden:

* Vlakke projecties, zoals een plattegrond, doorsnede & gevelaanzicht
* Axonometrische projecties zoals isometrische projectie, planimetrische
  projectie, cavelier en cabinet.

Voorbeelden:

[Vlakke projecties](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekensystemen#Vlakke_projectie)

* Plattegrond (aka floorplan)

![Plattegrond](http://wiki.bk.tudelft.nl/mw_bk-wiki/images/thumb/1/11/Plattegrond-uitleg.jpg/800px-Plattegrond-uitleg.jpg)

* Doorsnede (Section)

![Doorsnede](http://wiki.bk.tudelft.nl/mw_bk-wiki/images/thumb/c/c0/Doorsnede-uitleg.jpg/680px-Doorsnede-uitleg.jpg)

* Gevelaanzicht

 ![Gevelaanzicht](http://wiki.bk.tudelft.nl/mw_bk-wiki/images/f/ff/Gevel-technisch.jpg)

 [Axonometrische projecties](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekensystemen#Axonometrische_Projectie)

![Axonometrische projecties](http://wiki.bk.tudelft.nl/mw_bk-wiki/images/thumb/9/9b/Axo-soorten.jpg/311px-Axo-soorten.jpg)

Een specifieke vorm van een isometrische projectie is de exploded view:

Voorveeld:
![Exploded view](https://www.lifegate.com/app/uploads/atnf4o.jpg)
![Billy](https://cdn-images-1.medium.com/max/1600/1*KmJbC8bdTxvCSQdyxGtxaA.jpeg)

Het makkelijke aan de exploded view is dat men in een oogopslag kan zien hoe de
constructie in elkaar zit. En bij kleinere constructies van welk type
verbindingen er gebruik is gemaakt. Iets dat zeer praktisch is bij reparatie en
ontmanteling.

Meer info: [Bouwtechnisch_Tekenen:_Tekensystemen](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekensystemen)

### Layout

Zie: [Bouwtechnisch_Tekenen:_Layout](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Layout)

### Bestandsformaat 3D

>"The Industry Foundation Classes (IFC) data model is intended to describe building and construction industry data. It is a platform neutral, open file format specification that is not controlled by a single vendor or group of vendors. It is an object-based file format with a data model developed by buildingSMART (formerly the International Alliance for Interoperability, IAI) to facilitate interoperability in the architecture, engineering and construction (AEC) industry, and is a commonly used collaboration format in Building information modeling (BIM) based projects. The IFC model specification is open and available.[1] It is registered by ISO and is an official International Standard ISO 16739:2013."

Bron: [Wikipedia: Industry Foundation Classes](https://en.wikipedia.org/wiki/Industry_Foundation_Classes)

Meer informatie over het bestandsformaat .ifc en open source tools zie: [www.buildingsmart-tech.org](http://www.buildingsmart-tech.org/implementation/get-started/ifc-open-source)

{{% notice warning %}}
Aandachtspunt:
Het kan zijn dat het IFC bestand niet alle informatie kan bevatten die
de bouwer aan de bouwtechnische tekening toevoegt. Het is daarom de wens om ook het bronbestand, het native bestand voor het programma waar de  bouwer mee werkt, ook te ontvangen.
{{% /notice %}}

### Bestandsformaat 2D

> "CAD file formats generally fall into two categories either Native or Neutral
> (Standard) File format. Native file formats are Proprietary of a particular CAD
> software maker, to be used with their software.Neutral or Standards were
> specifically created to encourage interoperability, which helps exchange files
> between different software programs. Neutral or Standard File format make it
> easier to exchange files with someone who uses different CAD software, the most
> successful Native Formats are supported by a variety of software."

Veel gebruikt neutral file format:

* DXF

> "DXF which stands for Drawing Interchange Format, or Drawing Exchange Format is
> a pure 2D format and technically should be viewed as a Native format. It is
> Autocad’s native 2D format. But Autocad is so ubiquitous and so many CAD
> programs support it that DXF has come to be a pretty universal interchange
> format for 2D information."

Bron: [CAD file formats and standards](https://www.asensar.com/article/basics/cad-file-formats-and-standards.html)

Veel gebruikt Native File Format

* DWG

DWG is het native bestandsformaat van Autodesk’s AutoCAD® software. De
onderstaande open source CAD programma's kunnen dit bestandsformaat echter wel
importeren:

[FreeCAD](https://www.freecadweb.org/)
[LibreCAD](https://librecad.org/)
[QCAD](https://qcad.org/)

[QCAD commandline
tools](https://www.ribbonsoft.com/en/products/qcad-command-line-tools) kunnen
DWG en DXF bestanden naar SVG, PDF en PNG converteren.

De wens is om naast een download van het bronbestand de bouwtechnische
tekeningen ook te kunnen weergeven op de documentatie website.

> "[Dwg2maptiles](https://www.ribbonsoft.com/en/products/qcad-command-line-tools)
> fully automatically creates sets of tiles for use in online maps. The generated
> directory / file structure follows the well established standard of (z/x/y.png).
> The number of zoom levels (z) is adjustable. Such map tiles can be used to
> create interactive maps for the web, for example using leaflet.js. [Click here
> for an example of such a map created with dwg2maptiles and
> leaflet.js.](http://qcad.org/res/map/)"

Bron: [QCAD command line tools](https://www.ribbonsoft.com/en/products/qcad-command-line-tools)

Voor leaflet.js is ook een [HTML5
plugin](https://leaflet.github.io/Leaflet.fullscreen/) beschikbaar die fullsceen
weergave mogelijk maakt.

{{% notice warning %}}
Aandachtspunt:
Het kan zijn dat het DXF of DWG bestand niet alle informatie kunnen bevatten die
de bouwer aan de bouwtechnische tekening toevoegt. Het is daarom de wens om ook het bronbestand, het native bestand voor het programma waar de  bouwer mee werkt, ook te ontvangen.
{{% /notice %}}

