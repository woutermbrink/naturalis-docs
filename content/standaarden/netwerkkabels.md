# Technische eisen netwerkkabel

## Omschrijving

Deze technische eisen gaat over de netwerkkabel die tussen (data)outlets en
devices met een netwerkinterface komt te lopen. Hierbij valt te denken aan
interactives, beamers, show controllers, bezoekers-tellers, kassa’s, telefoons,
etc.

## Technische eisen

* Afscherming: S/FTP

* Dikte aders: AWG 23 of AWG 24

* Materiaal van kern: Massieve kern, 100% koper

* Categorie snelheid: Cat 6a

* Mantel: Halogeenvrij

* Connector: Snagless

## Toelichting technische eisen

Hieronder worden de technische eisen toegelicht.

### 1. Afscherming

Netwerkkabels zijn leverbaar in afgeschermde en niet-afgeschermde varianten. De
afscherming is ontworpen om elektromagnetische storingen tegen te gaan, maar kan
ook extra bescherming bieden tegen hardhandig gebruik.De UTP (Unshielded
Twisted Pair) kabel is de niet afgeschermde variant. Hiernaast bestaan ook
kabels met verschillende varianten van bescherming

#### Opties

<table>
  <tr>
    <td>Benaming oud</td>
    <td>Benaming nieuw</td>
    <td>Uitleg</td>
    <td>Bescherming kabel</td>
    <td>Bescherming aderparen</td>
  </tr>
  <tr>
    <td>UTP</td>
    <td>U/UTP </td>
    <td>Unshielded Twisted Pair</td>
    <td>geen</td>
    <td>geen</td>
  </tr>
  <tr>
    <td>STP</td>
    <td>U/FTP</td>
    <td>Shielded Twisted</td>
    <td>geen</td>
    <td>folie</td>
  </tr>
  <tr>
    <td>FTP</td>
    <td>F/UTP</td>
    <td>Foiled Twisted Pair</td>
    <td>folie</td>
    <td>geen</td>
  </tr>
  <tr>
    <td>S-STP</td>
    <td>S/FTP</td>
    <td>Shielded / Screened and Foiled Twisted Pair</td>
    <td>vlechtwerk</td>
    <td>folie</td>
  </tr>
  <tr>
    <td>S-FTP</td>
    <td>SF/UTP</td>
    <td>Shielded and Foiled Untwisted Pair</td>
    <td>folie,vlechtwerk</td>
    <td>geen</td>
  </tr>
</table>


#### Keuze

S/FTP is kwalitatief de beste keus. Er is minder slijtage en een veel kleinere
kans op breuken. Bij eerdere tentoonstellingen hebben we gebruik gemaakt van
U/UTP en U/FTP, maar hierdoor hadden we regelmatig last van storingen. Dezelfde
ervaringen hadden we in het datacenter. Daarom gebruikt ICT Infra nu standaard
S/FTP in het datacenter en in de patchkasten

### 2. Dikte aders

Netwerkkabels zijn er in verschillende diktes. Dit is meestal uitgedrukt in AWG,
dit staat voor "American wire gauge" en staat voor de dikte van de draad. De
regel in deze is, des te lager de AWG waarde, des te dikker is de ader in de
netwerk kabel.

#### Opties

* AWG 21 - AWG 28

#### Keuze

AWG 23 en AWG 24 voldoen allebei.Bij netwerkbekabeling is AWG 23 of AWG 24 de
standaard. Slechte kwaliteit netwerkkabels maken vaak gebruik van andere diktes.

### 3. Materiaal kern

Netwerkkabels van mindere kwaliteit hebben niet altijd een volledig koperen
kern. Indien er gebruik wordt gemaakt van een dun laagje koper, aluminium, of
zelfs staal is de kans op breuken groter. Ook is er minder flexibiliteit en een
lagere doorvoersnelheid.

#### Opties

* CCA – Copper Cladded Aluminium

* CCS & CCF – Copper Cladded Steel

* Massieve kern, 100% koper

#### Keuze

Massieve kern, 100% koper. Dit is simpelweg de standaard voor niet budget
netwerkkabels. Door de keus van 100% koper zullen er minder vaak kabels
vervangen hoeven worden en verliezen we minder tijd met troubleshooting van
storingen. Wel is de kabel hierdoor stugger dan bijvoorbeeld een CCA kabel.

### 4. Categorie snelheid

Eén van de belangrijkste verschillen van netwerkkabel is de geschikte snelheid.
Hiervoor zijn verschillende categorieën bedacht. Cat 3 t/m Cat 7, met ook enkele
tussenstappen. De laatste twee categorieën (7 en 7a) hebben nog geen
snelheidsindicatie in Gbps, maar afhankelijk van de lengte zouden ze 40 - 100
Gbps moeten kunnen verwerken.

#### Opties

* Cat 5: geschikt tot 100 Mbps

* Cat 5e: geschikt tot 1000 Mbps, oftewel Gigabit/s en signalen tot 100 MHz.

* Cat 6: Geschikt voor 10 Gbps tot 55 meter lengte en signalen tot 250 MHz

* Cat 6a: Geschikt voor 10 Gbps tot 100 meter lengte en signalen tot 500 MHz

* Cat 7:  Geschikt voor signalen tot 600 MHz

* Cat 7a: Geschikt voor signalen tot 1000 MHz

#### Keuze

Cat 6a voldoet aan onze eisen. Bij de keuze voor het universeel
bekabelingssysteem voor de oud- en nieuwbouw is gekozen voor Cat 6a. Het zou
daarom handig zijn om alle bekabeling op dezelfde categorie te houden en ook Cat
6a te gebruiken tussen de (data)outlets en alle museum devices.

### 5. Buitenmantel

De isolerende buitenmantel van een netwerkkabel kan bestaan uit verschillende
materialen. Belangrijk om op te letten is of deze buitenmantel halogeenvrij is
om bij verbranding weinig giftige gassen vrij te geven, alsook weinig rook te
ontwikkelen.

#### Opties

* PVC

* PP

* PE

* Halogeenvrij

#### Keuze

Halogeenvrij. Behalve het directe gevaar voor mens, dier en milieu kunnen
giftige gassen ook elektronica aantasten. De gevolgen hiervan kunnen zelfs in
een later stadium mogelijke storingen veroorzaken. Door halogeenvrije materialen
toe te passen kunnen deze gevaren aanzienlijk gereduceerd worden.

### 6. Connector

Het is belangrijk om goede connectors te gebruiken. Zeker bij de opbouw van alle
tentoonstellingen en het werken op moeilijk toegankelijke plekken moet de
connector goed vast en los te halen zijn. In het verleden heeft het veel zweet
en zelfs bloed gekost om (assembled) netwerkkabels los te krijgen op lastige
plekken.

#### Opties

* Snagless

* Assembled

#### Keuze

Snagless.Door te werken met snagless connectors, zit er geen plastic lipje in
de weg bij het monteren/demonteren van devices.

