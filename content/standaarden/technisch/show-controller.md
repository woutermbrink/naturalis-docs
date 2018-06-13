---
title: "Show controller"
date: 2018-05-23T14:33:46+02:00
draft: false
---

Per tentoonstelling of experience is er één show controller. De show controller
is verantwoordelijk voor het op tijd, in de juiste volgorde en de juiste
omstandigheden activeren van geluid, licht, en andere AV-onderdelen.

In zalen met weinig technische complexiteit wordt de show en licht control door
één en hetzelfde apparaat uitgevoerd. In zalen met een hoge mate van technische
complexiteit wordt daarentegen gewerkt met een aparte show controller die een
dedicated licht controller aanstuurt voor de bediening van het licht.

De technische eisen in dit document gelden voor zowel gecombineerde show en
licht controllers als voor dedicated show controllers. Eisen die specifiek voor
de aansturing van licht gelden staan [in dit document](licht-controller.md)
toegelicht.

Een toelichting op de rolverdeling tussen de show controllers in de
tentoonstellingen en een overkoepelende museum controller [lees je
hier](../design/showcontrol.md).

## Technische eisen

* Input control: de show controller is via HTTP aan te sturen. Bij voorkeur gaat
  het om een REST API met JSON response format.
* Output control: show controller ondersteunt het aansturen van componenten
  d.m.v. HTTP, UDP en TCP.
* Besturingssysteem: Linux of een all-in-one oplossing met embedded
  besturingssysteem.
* Aanpasbaarheid: software voor aanpassen show wordt meegeleverd. Bij voorkeur
  configuratie via web interface.
* Backup: alle instellingen moeten via een backup gerestored kunnen worden, bij
  voorkeur via het netwerk.
* Formfactor: hardware gebouwt voor 24/7 operationaliteit en 19 inch
  rackmountable.
* Updates: software en OS moeten bij voorkeur van updates kunnen worden voorzien
  met behoud van een werkende configuratie.

{{%expand "Toelichting technische eisen" %}}

## Input control

Zoals [hier beschreven](../design/showcontrol.md) moeten show controllers door
de museum controller aangestuurd kunnen worden.

### Opties

* [HTTP](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)
* [REST](https://en.wikipedia.org/wiki/Representational_state_transfer)
* [OSC](https://en.wikipedia.org/wiki/Open_Sound_Control)
* [Serial/RS-232](https://en.wikipedia.org/wiki/RS-232)
* [Telnet](https://en.wikipedia.org/wiki/Telnet)
* Een of ander ander protocol

### Keuze

Show controllers zijn via een HTTP gebaseerd protocol aan te sturen, bij
voorkeur via een REST API. REST is een breed ondersteunde IT standaard voor het
gecontroleerd aansturen van software.

De REST API moet in ieder geval de volgende functies ondersteunen:

* Uitlezen van lijst van shows
* Uitlezen welke show op dit moment actief is
* Starten/stoppen van een show

Bij voorkeur ondersteunt de REST API van de show controller JSON als response
format.

## Output control

In het museum is sprake van een grote diversiteit aan componenten waarvan een
groot deel moet worden aangestuurd door show controllers. De ondersteuning van
veel output protocollen is daarom gewenst.

### Opties

* [UDP](https://en.wikipedia.org/wiki/User_Datagram_Protocol)
* [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol)
* [HTTP](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)
* [REST](https://en.wikipedia.org/wiki/Representational_state_transfer)
* [OSC](https://en.wikipedia.org/wiki/Open_Sound_Control)
* [Art-Net](https://en.wikipedia.org/wiki/Art-Net)
* [Serial/RS-232](https://en.wikipedia.org/wiki/RS-232)
* [Telnet](https://en.wikipedia.org/wiki/Telnet)
* [DMX](https://en.wikipedia.org/wiki/DMX512)
* [sACN](https://en.wikipedia.org/wiki/Architecture_for_Control_Networks)
* Nog heel veel

### Keuze

Show controllers ondersteunen minimaal het aansturen van componenten door middel
van HTTP gebaseerde protocollen (waaronder REST API's), UDP en TCP.

## Besturingssysteem

Softwareapplicaties draaien over het algemeen op een besturingssysteem (OS).
Show controllers vormen daarop geen uitzondering. In sommige gevallen is het wel
zo dat show controllers als all-in-one-box worden geleverd en het OS al
geïntegreerd is.

### Opties

* Integrated
* Windows
* Linux
* Mac OSX

### Keuze

Show controllers draaien op Linux of draaien op basis van een all-in-one
oplossing met integrated besturingssysteem.

## Aanpasbaarheid

Wanneer een component in de tentoonstelling vervangen moet worden of in het
geval van een kleine functionele wijziging moet Naturalis zelf de configuratie
van de show in de show controller kunnen aanpassen.

### Opties

* N.v.t.

### Keuze

De software om de shows aan te passen moet meegeleverd worden bij show
controllers. Op deze manier wordt aan de minimale voorwaarde voor aanpasbaarheid
voldaan.

Daarnaast heeft het de voorkeur dat show controllers zijn te benaderen en te
configureren via een web interface.

## Backup

Een (hardware) defect of foutieve aanpassing van de configuratie van de show
controller heeft in potentie impact op de gehele tentoonstelling. Dergelijke
incidenten moeten om die reden snel opgelost kunnen worden.

### Opties

* N.v.t.

### Keuze

Alle (!) instellingen van een show controller moeten via een backup gerestored
kunnen worden. Bij voorkeur zijn de configuraties *text based* zodat er versie
controle op basis van [Git](https://git-scm.com/) mogelijk is.

Daarnaast bieden show controllers bij voorkeur de mogelijkheid om configuraties
via het netwerk te restoren.

## Formfactor

Show controllers vormen een essentieel onderdeel van de technische
infrastructuur van tentoonstellingen en experiences. De hardware van de show
controller moet om die reden op een veilige manier geplaatst kunnen worden.

### Opties

* 19 inch rackmountable
* Desktop
* Ander formaat

### Keuze

Show controllers draaien op hardware die is gebouwd om 24/7 operationeel te
zijn. Daarnaast is de hardware 19 inch rackmountable zodat deze in de
serverkasten in de klimaatgecontroleerde SER (secondary equipment room) van de
betreffende tentoonstellingszaal kunnen worden opgehangen.

## Updates

Software vergt vanwege het verhelpen van (security) bugs continue onderhoud. Om
die reden is het makkelijk en gecontroleerd kunnen updaten van de software van
show controllers van belang.

### Opties

* N.v.t.

### Keuze

De op de markt beschikbare show controllers hanteren over het algemeen geen
strikte update policies waarbij binnen een versie backward compatibility is
gegarandeerd. Tevens wordt er geen onderscheid gemaakt tussen security updates
en feature updates.

Tegelijkertijd is het update van software om security redenen wel van belang.
Het heeft daarom de (sterke) voorkeur dat de software van de show controller én
het onderliggende besturingssysteem met enige regelmaat geupdated kunnen
worden op een manier dat de configuratie van de show controller blijft werken.

{{% /expand%}}
