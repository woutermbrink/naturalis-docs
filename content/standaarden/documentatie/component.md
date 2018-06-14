---
title: "Component"
date: 2018-05-25T12:50:37+02:00
draft: true
weight: -5
---

Op basis van de in dit document toegelichte standaardindeling zijn er voor
elke soort component
[archetypen](https://gohugo.io/content-management/archetypes/) gemaakt.
Archetypes zijn templates waarmee automatisch de relevante documentindeling kan
worden gegenereerd:

```bash
hugo new componenten/component/merk-model/_index.md
hugo new componenten/component-soort/merk-model/_index.md
```

Met dit commando wordt een document aangemaakt op basis van het archetype voor
een generiek component of een specifieke soort component. In hoofdlijnen is de
indeling van deze documenten hetzelfde, maar op details wijkt deze af per
soort component.

## Algemene informatie

1. Naam component samengesteld uit het merk en het model (titel van het
   document)
1. Datum eerste publicatie
1. Datum laatste wijziging

De algemene informatie zal door middel van templating en op basis van de
metadata automatisch worden gegenereerd.

## Overzicht

Wanneer een pagina geopend wordt moet een gebruiker van de documentatie direct
antwoord krijgen op twee vragen:

* Ben ik op de pagina van het juiste component
* Wat is ruwweg de functie van dit component

Om die reden wordt bij voorkeur bovenaan de pagina van een component een
afbeelding of tekening getoond. Praktisch gezien zal hiervoor een
[shortcode](https://gohugo.io/content-management/shortcodes/) worden gebruikt.

1. Merk
1. Model
1. Leverancier
1. Aantal (link naar assets in Topdesk die momenteel in productie worden gebruikt).
1. Voorraad (link naar vooraad assets in Topdesk)

Het overzicht zal door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) automatisch worden
gegeneerd op basis van de metadata.

## Specificaties

De specificaties verschillen per component. In de verschillende archetypes staat
omschreven welke gegevens we in ieder geval willen weten van het betreffende
soort component. Waar nodig kunnen deze worden aangevuld.

Hieronder staan per soort component de standaard specificaties opgesomd.

### Computer

* Vermogen: (watt)
* Afmetingen: (hoogte x breedte x diepte in mm)
* Gewicht:

### Beeldscherm

* Video-in:
* Bediening:
* Schermdiagonaal:
* Resolutie:
* Beeldverhouding:
* Vermogen: (watt)
* Kijkhoek:
* Afmetingen: (hoogte x breedte x diepte in mm)
* Gewicht:

### Projector

* Levensduur lichtbron:
* Type lamp:
* Projectie techniek:
* ANSI lumen:
* Resolutie:
* Beeldverhouding:
* Statische contrastverhouding:
* Video-in:
* Bediening:
* Verbinding (Ethernet):
* Afmetingen: (hoogte x breedte x diepte in mm)
* Vermogen: (watt)

### Lichtarmatuur

* Socket:
* Stroomaansluiting:
* Sturing:
* Vermogen: (watt)
* Gewicht:

### Controller

* Vermogen: (watt)
* Afmetingen: (hoogte x breedte x diepte in mm)
* Gewicht:

### Versterker

* Versterkerklasse:
* Aantal speaker kanalen:
* RMS vermogen:
* Broningangen:
* Speakeraansluitingen:
* Signaal-ruisverhouding:
* Impedantie:
* Beveiligingen:
* Vermogen: (watt)
* Afmetingen: (hoogte x breedte x diepte in mm)

### Speaker

* RMS vermogen:
* Type connector:
* Actief of passief:
* Afmetingen: (hoogte x breedte x diepte in mm)

### Stekkerdoos

* IP-waarde:
* Aantal stopcontacten:
* Kabellengte:
* Aansluitvermogen:

### Kabel

* Type:
* Connector:
* Lengte:
* Kabeldikte:

### Lichtbron

* Socket:
* Watt:
* Volt:

## Handleidingen en procedures

Een overzicht van gebruikers- en beheerdershandleidingen en procedures wordt
door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata automatisch gegenereerd.

## Known issues

Een overzicht van actuele *known issues* ten aanzien van het component
met een korte toelichting en waar beschikbaar een workaround.

## Afspraken en verantwoordelijkheden

Een overzicht van:

* SLA's (met link naar Topdesk)
* Naam leverancier (met link naar Topdesk)

In het geval van specifieke afspraken worden deze hier toegelicht.

## Aanvullende documentatie

Een overzicht van aanvullende documentatie wordt door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata (in dit geval de page resources) automatisch gegenereerd.
