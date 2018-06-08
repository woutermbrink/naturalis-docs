---
title: "Component"
date: 2018-05-25T12:50:37+02:00
draft: true
---

Op basis van de in dit document toegelichte standaard indeling zijn voor verschillende component soorten een [archetype](https://gohugo.io/content-management/archetypes/) gemaakt. Archetypes zijn templates waarmee automatisch de relevante documentindeling kan worden gegenereerd:

```bash
hugo new componenten/component/merk-model/_index.md
hugo new componenten/component-soort/merk-model/_index.md
```

Met dit commando wordt een document aangemaakt op basis van het archetype voor een generiek component of een specifieke component soort. In hoofdlijnen is de indeling van deze documenten hetzelfde, maar op details wijkt deze af per component soort.

## Algemene informatie

1. Naam component samengesteld uit het merk en het model (titel van het document)
1. Datum eerste publicatie
1. Datum laatste wijziging

De algemene informatie zal door middel van templating en op basis van de metadata automatisch worden gegenereerd.

## Overzicht

Wanneer een pagina geopend wordt moet een gebruiker van de documentatie direct antwoord krijgen op twee vragen:

* Ben ik op de pagina van de juiste component
* Wat is ruwweg bij de functie van dit component

Om die reden word bij voorkeur bovenaan de pagina van een component het liefst een afbeelding of tekening getoond. Praktisch gezien zal hiervoor een [shortcode](https://gohugo.io/content-management/shortcodes/) worden gebruikt.

1. Merk
1. Model
1. Leverancier
1. Aantal (link naar assets in Topdesk die momenteel in productie worden gebruikt).
1. Voorraad (link naar vooraad assets in Topdesk)

Het overzicht zal door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata automatisch gegenereerd.

## Specs

De specs verschillen per component. In de verschillende archetypes staat omschreven welke gegevens we in ieder geval willen weten van specifieke component soorten. Maar kunnen waar nodig worden aangevuld. 

Hier onder per component soort de standaard specificaties.

#### Computer

* Stroomverbruik:

#### Beeldscherm

* Video-in: 
* Bediening:
* Schermdiagonaal: 
* Resolutie:  
* Beeldverhouding:
* Vermogen (watt): 
* Kijkhoek: 
* Afmetingen: hoogte x breedte x diepte
* Gewicht:
* Stroomverbruik:

#### Projector

* Levensduur lichtbron: 
* Type lamp: 
* Projectie techniek: 
* ANSI lumen:
* Resolutie:  
* Beeldverhouding:
* Contrastverhouding (statisch):
* Video-in: 
* Bediening: 
* Verbinding (Ethernet): 
* Afmetingen: hoogte x breedte x diepte
* Stroomverbruik:

#### Armatuur

* Socket:
* Stroomaansluiting: 
* Sturing:
* Stroomverbruik: 

#### Controller

* Stroomverbruik:

#### Versterker

* Versterkerklasse: 
* Aantal speaker kanalen:
* RMS vermogen:
* Broningangen:
* Speakeraansluitingen:
* Signaal-ruisverhouding:
* Impedantie:
* Beveiligingen:
* Stroomverbruik:

#### Speaker

* RMS vermogen:
* Type connector:
* Actief of passief:

#### Stekkerdoos

* IP-waarde:
* Aantal stopcontacten:
* kabellengte:
* Aansluitvermogen:

#### Kabel 

* Type: 
* Connector: 
* Lengte:
* Kabeldikte: 

#### Lichtbron

* Socket:
* Watt:
* Volt: 

## Handleidingen en procedures

Een overzicht van gebruikers- en beheerdershandleidingen en procedures wordt
door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata automatisch gegenereerd.

## Known issues

Een overzicht van actuele known issues ten aanzien van het component
met een korte toelichting en waar beschikbaar een workaround.

## Afspraken en verantwoordelijkheden

Een overzicht van:

* SLAs (met link naar Topdesk)
* Naam leverancier (met link naar Topdesk)

In het geval van specifieke afspraken dan worden deze hier toegelicht.

## Aanvullende documentatie

Een overzicht van aanvullende documentatie wordt door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata (in dit geval de page resources) automatisch gegenereerd.


