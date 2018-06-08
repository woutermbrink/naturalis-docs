---
title: "Component"
date: 2018-05-25T12:50:37+02:00
draft: true
---


Op basis van de in dit document toegelichte standaard indeling is voor elke soort
component een
[archetype](https://gohugo.io/content-management/archetypes/) gemaakt.
Archetypes zijn templates waarmee automatisch de relevante documentindeling kan
worden gegenereerd:

```bash
hugo new componenten/component-soort/merk-model/_index.md
```

Met dit commando wordt een document aangemaakt op basis van het archetype
voor componenten. In hoofdlijnen is de indeling van deze documenten hetzelfde, maar op details wijkt deze af per component soort.

## Algemene informatie

1. Component soort
1. Naam component samengesteld uit het merk en het model (titel van het document)
1. Datum eerste publicatie
1. Datum laatste wijziging

De algemene informatie zal door middel van templating en op basis van de
metadata automatisch worden gegenereerd.

## Overzicht

Wanneer een pagina geopend wordt moet een gebruiker van de documentatie direct
antwoord krijgen op twee vragen:

* Ben ik op de pagina van de juiste component
* Wat is ruwweg bij de functie van dit component

Om die reden dient bovenaan de pagina van een component het liefst een
afbeelding of tekening te worden getoond. Praktisch gezien
zal hiervoor een [shortcode](https://gohugo.io/content-management/shortcodes/)
worden gebruikt.

1. Merk
1. Model
1. Leverancier
1. Aantal (link naar assets in Topdesk die momenteel in productie worden gebruikt).
1. Voorraad (link naar vooraad assets in Topdesk)

Het overzicht zal door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata automatisch gegenereerd.

Indien nodig wordt de componenten lijst handmatig aangevuld.

## Functionele omschrijving

Onder deze kop dient een tekstuele beschrijving van de juiste functionele
werking van de eenheid te worden opgenomen. Indien relevant wordt deze omschrijving
voorzien van visualisaties die helpen de juiste functionele werking te begrijpen.

## Specs

De specs verschillen per component soort, in het archetype staat omschreven welke gegevens we in ieder geval willen weten. Maar kunnen waar nodig worden aangevuld. 

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


#### IODevice 

* 

## Configuratie

Alle handmatig ingestelde parameters (bijvoorbeeld: instelling van een fysieke
volumeknop) worden hier opgesomd en waar nodig van een toelichting voorzien.

Daarnaast wordt hier (mogelijk op basis van een shortcode) een verwijzing naar
de configuratie in Ansible toegevoegd.

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


