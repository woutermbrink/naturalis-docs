# Technische eisen licht controller

## Omschrijving

Zoals beschreven in de documentatie ten aanzien van de [technische eisen voor
show controllers](show-controller.md) is er per tentoonstelling of experience is
er altijd één licht controller. In tentoonstellingen met weinig technische
complexiteit is de licht controller ook verantwoordelijk voor de show control.

De eisen ten aanzien van de show control alsmede algemene eisen op het vlak van
onderhoudbaarheid staan in [dat document](show-controller.md) beschreven. In dit
document worden de specifieke eisen ten aanzien van de aansturing van het licht
beschreven.

## Technische eisen

1. [Protocol aansturing licht](#protocol-aansturing-licht)
4. [Poorten](#poorten)
5. [Aanpasbaarheid](#aanpasbaarheid)
6. [Backup](#backup)

## Protocol aansturing licht

In het museum is sprake van een grote diversiteit aan componenten waarvan een
groot deel moet worden aangestuurd door licht controllers. De ondersteuning van
veel output protocollen is daarom gewenst.

### Opties

* [Art-Net](https://en.wikipedia.org/wiki/Art-Net)
* [DMX](https://en.wikipedia.org/wiki/DMX512)
* [sACN](https://en.wikipedia.org/wiki/Architecture_for_Control_Networks)
* [DALI](https://en.wikipedia.org/wiki/Digital_Addressable_Lighting_Interface)

### Keuze

Licht controllers ondersteunen minimaal het aansturen van lichtbronnen door
middel van DMX, Art-Net en sACN.

Hierdoor zijn we vrij om de distributie van DMX richting de spanningsrails
direct over UTP als over het datanetwerk (via Art-Net of sACN) plaats te laten
vinden. Het heeft de voorkeur om voor de distributie van het licht in het museum
één standaard te gebruiken.

## Programmering

Bij de bouw van de tentoonstellingen zullen, mogelijk door meerdere
lichtprogrammeurs de lichtshows instellen. Dit is een creatief proces waarbij de
programmeurs moeten kunnen 'verven met licht'. Tegelijkertijd moet het na
oplevering van het museum ook mogelijk zijn dat beheerders van Naturalis zelf
simpele aanpassingen of toevoegingen maken in de lichtstanden.

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
