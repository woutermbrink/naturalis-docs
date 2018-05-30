---
title: "Technische Tekeningen"
date: 2018-05-23T14:34:24+02:00
draft: true
---

## Standaard

Welke tekeningen, schema's en diagrammen gewenst zijn verschilt per functionele eenheid en per type component. Dit is iets dat in overleg moet worden vastgesteld. De standaarden formuleren wensen betreffende de verschillende type tekeningen, schema's en diagrammen als er sprake van is dat deze gemaakt gaan worden. 

* Werktuigbouwkundige tekeningen: Bronbestand & DXF, DWG, SVG, of PNG

* Samenstellingtekeningen liefst als exploded view of axonometrische projectie

* Blokschema's, logicaschema's & (tijd)volgorde- en toestandsdiagrammen: Genereren we met behulp van mermaid.js uit een markdown bestand hiervoor hebben we een lijst nodig van eenheden en hun onderlinge relatie, zie voorbeeld verderop in dit document.

* Grondschema's, werkingsschema's of stroomkringschema's, bedradingsschema's, en aansluitschema's: Bijvoorkeur een XML bestand gemaakt met behulp van [draw.io](https://www.draw.io/) of anders het bronbestand en een SVG of PNG. 

* Printlay-outs: Bijvoorkeur als gerber file & een SVG of PNG. 

* Leidingsschema's en (topografische) leidingschema's: Bronbestand & conversie naar DXF of DWG.

* Ontsluiting: Met behulp van dwg2maptiles of dxf2maptiles genereren we tiles,
  met behulp van leaflet.js en de plugin leaflet.Fullscreen tonen we deze op de
  documentatie website. Daarnaast bieden we een download link aan naar het
  bronbestand en het DXF / DWG bestand.

## Opties

Technische tekeningen zijn onder te verdelen in:

* werktuigbouwkundige tekeningen
* elektrotechnisch tekeningen of schematekeningen
* bouwkundige tekeningen

Bouwkundige tekeningen (aka bouwtechnische tekeningen) behandelen we in een andere pagina. 

#### Werktuigbouwkundige tekeningen

Een werktuigbouwkundige tekening is een technische tekening van een onderdeel van een product. Dit zijn tekeningen van producten, machine-onderdelen, en werktuigen.

De volgende tekeningen zijn hier onderdeel van:

* vrijlichaamsschema; het vereenvoudigen van de werkelijke situatie zodat er manueel een natuurkundige berekening kan worden uitgevoerd

* samenstellingtekeningen ((assemblage/montage, incl. stuklijsten) = werktekeningenpakket)

Samenstellingstekeningen zien we het liefst als [exploded view](https://en.wikipedia.org/wiki/Exploded-view_drawing) of [axonometrische projectie](http://wiki.bk.tudelft.nl/bk-wiki/Bouwtechnisch_Tekenen:_Tekensystemen#Axonometrische_Projectie).

Voorbeelden:

![exploded view gear](https://upload.wikimedia.org/wikipedia/commons/2/23/Gear_pump_exploded.png)

![Exploded view](https://www.lifegate.com/app/uploads/atnf4o.jpg)

* monotekeningen, zoals: snijtekeningen, draai- en freestekeningen, lastekeningen, plaatuitslagen en spuitgiettekeningen.

Bron: [Technisch_tekenen: Werktuigbouwkundig tekenen](https://nl.wikipedia.org/wiki/Technisch_tekenen#Werktuigbouwkundig_tekenen)

Bestandsformaat:

Bronbestand & DXF, DWG, SVG, of PNG

#### Elektrotechnische tekeningen

Elektrotechnische tekeningen zijn schematekeningen, met behulp van gestandaardiseerde symbolen. 

Er zijn in de basis twee hoofdgroepen; overzichtsschema's en ontwerpschema's. Overzichtschema's zullen in ons geval vaak onderdeel uitmaken van de documentatie op functionele eenheid niveau, ontwerpschema's kopen komen op zowel functionele eenheid niveau als component niveau voor. 

##### overzichtsschema's

De klant kan inzicht krijgen over wat er voor hem wordt ontworpen via de overzichtsschema's:

* blokschema's (block diagram / configuratieschema)
  
>"Een schema waarop op vereenvoudigde wijze (een gedeelte) van de configuratie van een elektrische installatie wordt >weergegeven, waarbij eenheden (panelen of besturingseenheden) als blokken worden weergegeven. Zo'n schema wordt ook wel >configuratieschema genoemd."

Bestandsformaat:

Blokschema's kunnen we op basis van een markdown bestand genereren met behulp van [mermaid.js](
https://mermaidjs.github.io/). Hiervoor hebben we een overzicht van eenheden nodig en hun onderlinge relaties.

Voobeeld mardown code van een simpele configuratie:

´´´A[Beeldscherm] -->|HDMI| B(NUC)
B -->|Audiokabel|C{Versterker}
C -->|Speakerkabel| D[Speaker]
C -->|Speakerkabel| E[Sub woofer]
C -->|Speakerkabel| F[Speaker]
´´´

Voorbeel diagram:

![mermaid-live-editor](https://mermaidjs.github.io/mermaid-live-editor/#/view/eyJjb2RlIjoiZ3JhcGggVERcbkFbQmVlbGRzY2hlcm1dIC0tPnxIRE1JfCBCKE5VQylcbkIgLS0-fEF1ZGlva2FiZWx8Q3tWZXJzdGVya2VyfVxuQyAtLT58U3BlYWtlcmthYmVsfCBEW1NwZWFrZXJdXG5DIC0tPnxTcGVha2Vya2FiZWx8IEVbU3ViIHdvb2Zlcl1cbkMgLS0-fFNwZWFrZXJrYWJlbHwgRltTcGVha2VyXVxuXG4iLCJtZXJtYWlkIjp7InRoZW1lIjoiZGVmYXVsdCJ9fQ)


Probeer het uit met [Mermaid Live Editor](https://mermaidjs.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggVERcbkFbQmVlbGRzY2hlcm1dIC0tPnxIRE1JfCBCKE5VQylcbkIgLS0-fEF1ZGlva2FiZWx8Q3tWZXJzdGVya2VyfVxuQyAtLT58U3BlYWtlcmthYmVsfCBEW1NwZWFrZXJdXG5DIC0tPnxTcGVha2Vya2FiZWx8IEVbU3ViIHdvb2Zlcl1cbkMgLS0-fFNwZWFrZXJrYWJlbHwgRltTcGVha2VyXVxuXG4iLCJtZXJtYWlkIjp7InRoZW1lIjoiZGVmYXVsdCJ9fQ)

* Grondschema's

>"Een schema waarbij de leidingen met het aantal aders en symbolen op enkelvoudige manier worden weergegeven. Op zo'n schema >wordt vaak (een gedeelte) van de configuratie van een elektrotechnische installatie weergegeven. De functie van een >grondschema en een blokschema liggen vaak in elkaars verlengde."

Bestandsformaat: 

Bijvoorkeur een XML bestand gemaakt met behulp van [draw.io](https://www.draw.io/) of anders het bronbestand en een SVG of PNG. 

##### ontwerpschema's

Als de basis van het ontwerp eenmaal bekend is wordt het uitgewerkt in:

* Logicaschema's
  
Zie: [Wikipedia: Logical data model](https://en.wikipedia.org/wiki/Logical_data_model)

Bestandsformaat: Markdown (gelijk aan blokkenschema's)
  
* (tijd)volgorde- en toestandsdiagrammen (state transition diagram)
  
![toestandsdiagram](https://mod-est.tbm.tudelft.nl/wiki/images/b/bc/ToestandsdiagramSpeelautomaat.png)
  
"Een toestandsdiagram (Engels: state diagram en ook wel state transition diagram) is een netwerkdiagram dat een schematische weergave is van een systeem dat als eindigetoestandsautomaat wordt beschouwd." 
 
Zie: [Wikipedia: Toestandsdiagram](https://mod-est.tbm.tudelft.nl/wiki/index.php/Toestandsdiagram)

Bestandsformaat: Markdown (gelijk aan blokkenschema's)
  
* werkingsschema's of stroomkringschema's
  
>"Een stroomkringschema wordt getekend om een elektrische schakeling beter te begrijpen en om te zien hoeveel draden er bij >te pas komen. Men maakt onderscheid tussen schema's voor hoofdstroom (400/230Vac) en stuurstroom (lagere spanningen), >zodoende spreekt men ook vaak van hoofdstroomschema en stuurstroomschema."

Bestandsformaat: 

Bijvoorkeur een XML bestand gemaakt met behulp van [draw.io](https://www.draw.io/) of anders het bronbestand en een SVG of PNG. 
  
* bedradingsschema's
  
![wiring diagram](https://upload.wikimedia.org/wikipedia/commons/4/48/WPEVStartRunWires.png)
  
>"A wiring diagram is a simplified conventional pictorial representation of an electrical circuit. It shows the components >of the circuit as simplified shapes, and the power and signal connections between the devices."
  
Zie: [Wikipedia: wiring diagram](https://en.wikipedia.org/wiki/Wiring_diagram)

Bestandsformaat: 

Bijvoorkeur een XML bestand gemaakt met behulp van [draw.io](https://www.draw.io/) of anders het bronbestand en een SVG of PNG.

* leidingsschema's en (topografische) leidingschema's
  
>"Hierbij worden de leidingen en buizen die worden gebruikt bij de elektrische installatie getekend op de plattegrond van >het gebouw waar de installatie zich bevindt. Men kan hier ook kabelvlaggen bijplaatsen. Dan spreekt men van >kabellooptekening."

Bestandsformaat: 

Bijvoorkeur een XML bestand gemaakt met behulp van [draw.io](https://www.draw.io/) of anders het bronbestand en een SVG of PNG. 

* printlay-outs 
  
![pcb gerber](http://i2c2p.twibright.com/i2c2p.pcb.output_back_small.png)

>"The Gerber format is an open ASCII vector format for 2D binary images.It is the de facto standard used by printed circuit >board (PCB) industry software to describe the printed circuit board images: copper layers, solder mask, legend, etc."

Bron: [Wikipedia: Gerber format](https://en.wikipedia.org/wiki/Gerber_format)

{{% tip %}}
Open Source design software: [Fritzing](http://fritzing.org)
{{% /tip %}}
  
* aansluitschema's
  
![aansluitschema](https://upload.wikimedia.org/wikipedia/commons/f/f4/LOGO_Aansluitschema.jpg)

>"Een schema waarop te zien is waar welke ader op welke klem wordt aangesloten. Zo'n soort schema wordt ook wel >klemmenstrooktekening of klemmenlijst genoemd."

Bron: [Wikipedia: Schema elektriciteit](https://nl.wikipedia.org/wiki/Schema_(elektriciteit))


Bestandsformaat: 

Bijvoorkeur een XML bestand gemaakt met behulp van [draw.io](https://www.draw.io/) of anders het bronbestand en een SVG of PNG. 

{{% tip %}}
>"Het is van eminent belang voor uitbreidingen en het storingzoeken in de gebouwde installatie dat de tekeningen tijdens en >na de bouw worden bijgewerkt. Deze bijgewerkte tekeningen noemt men revisietekeningen, ook wel "as built" tekeningen."

Bron: [Technisch_tekenen: Elektrotechnisch tekenen](https://nl.wikipedia.org/wiki/Technisch_tekenen#Elektrotechnisch_tekenen)
{{% /tip %}}
