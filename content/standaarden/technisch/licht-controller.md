---
title: "Licht controller"
date: 2018-05-23T14:33:04+02:00
draft: false
weight: 20
---

Zoals beschreven in de documentatie ten aanzien van de [technische eisen voor
show controllers](show-controller.md) is er per tentoonstelling of experience
altijd één licht controller. In tentoonstellingen met weinig technische
complexiteit is de licht controller ook verantwoordelijk voor de show control.

De eisen ten aanzien van de show control alsmede algemene eisen op het vlak van
onderhoudbaarheid staan in [dat document](show-controller.md) beschreven. In dit
document worden de specifieke eisen ten aanzien van de aansturing van het licht
beschreven.

## Technische eisen

* Protocol aansturing licht: minimaal ondersteuning voor DMX en sACN
* Programmering: voorkeur voor licht controllers die in staat zijn om
  lichtstanden te importeren of op te nemen.

{{%expand "Toelichting technische eisen" %}}

## Protocol aansturing licht

Voor de aansturing van lichtspots (kleurwaarde, intensiteit, positie etc.)
bestaan er uiteenlopende protocollen. De licht controller moet de juiste
protocollen ondersteunen.

### Opties

* [Art-Net](https://en.wikipedia.org/wiki/Art-Net)
* [DMX](https://en.wikipedia.org/wiki/DMX512)
* [sACN](https://en.wikipedia.org/wiki/Architecture_for_Control_Networks)
* [DALI](https://en.wikipedia.org/wiki/Digital_Addressable_Lighting_Interface)

### Keuze

Licht controllers ondersteunen minimaal de aansturing van lichtspots door middel
van DMX en sACN.

De aan te sturen lichtspots die voor de tentoonstelling zijn geselecteerd kunnen
allemaal door middel van DMX worden aangestuurd. Door ondersteuning te eisen van
bovenstaande protocollen zijn we vrij om de distributie van DMX richting de
spanningsrails direct over UTP als over het datanetwerk (via sACN) plaats te
laten vinden. Het heeft de voorkeur om voor de distributie van het licht in het
museum één standaard te gebruiken.

## Programmering

Bij de bouw van de tentoonstellingen zullen de lichtshows door meerdere
lichtprogrammeurs worden ingesteld. Dit is een creatief proces waarbij de
programmeurs moeten kunnen 'verven met licht'. Tegelijkertijd moet het na
oplevering van het museum ook mogelijk zijn dat beheerders van Naturalis zelf
simpele aanpassingen of toevoegingen kunnen maken in de lichtstanden.

### Opties

* Licht controllers die werken met vendor-specifieke programmatuur.
* Licht controllers die in staat zijn om lichtstanden te importeren of op te
  nemen.

### Keuze

We hebben een voorkeur voor licht controllers die lichtstanden kunnen importeren
en/of opnemen. Hierdoor wordt de snelheid van het programmeren vergroot
aangezien lichtprogrammeurs kunnen werken met de lichttafel van hun voorkeur.
Bovendien wordt op die manier de rol van de lichtcontroller beperkt tot het in
de juiste volgorde afspelen van lichtcontent. Dit sluit aan bij het [show
control design](../design/showcontrol.md) en vergroot de vendor
onafhankelijkheid.

Voorwaarde is hierbij wel dat de opgenomen lichtstanden relatief eenvoudig op
detail kunnen worden bijgesteld.

{{% /expand%}}
