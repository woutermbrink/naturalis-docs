---
title: "Functionele eenheid"
date: 2018-05-23T14:32:32+02:00
draft: false
---

Op basis van de in dit document toegelichte standaard indeling is voor elke type
functionele eenheid een
[archetype](https://gohugo.io/content-management/archetypes/) gemaakt.
Archetypes zijn templates waarmee automatisch de relevante documentindeling kan
worden gegenereerd:

```bash
hugo new interactives/test/_index.md
hugo new exhibits/test/_index.md
```

Met het eerste commando wordt een document aangemaakt op basis van het archetype
voor interactives, het tweede die voor exhibits. In hoofdlijnen is de indeling
van deze documenten hetzelfde, maar op details wijkt deze af.

## Algemene informatie

1. Naam functionele eenheid (titel van het document)
1. Datum eerste publicatie
1. Datum laatste wijziging
1. Tentoonstelling, Experience of Infrastructuur waar de functionele eenheid
   onderdeel vanuit maakt
1. Ontwikkelstadium

De algemene informatie zal door middel van templating en op basis van de
metadata automatisch worden gegenereerd.

## Overzicht

Wanneer een pagina geopend wordt moet een gebruiker van de documentatie direct
antwoord krijgen op twee vragen:

* Ben ik op de pagina van de juiste functionele eenheid?
* Wat hoort er ruwweg bij deze functionele eenheid?

Om die reden dient bovenaan de pagina van een functionele eenheid een
overzichtsafbeelding of samenstellingsschema te worden getoond. Praktisch gezien
zal hiervoor een [shortcode](https://gohugo.io/content-management/shortcodes/)
worden gebruikt.

## Componenten

1. Naam component (incl. link naar documentatie component)
1. Aantal (link naar assets in Topdesk die momenteel in productie worden gebruikt).
1. Voorraad (link naar vooraad assets in Topdesk)

Het overzicht met assets zal door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata automatisch gegenereerd.

Indien nodig wordt de componenten lijst handmatig aangevuld.

## Functionele omschrijving

Onder deze kop dient een tekstuele beschrijving van de juiste functionele
werking van de eenheid te worden opgenomen. Indien relevant wordt deze omschrijving
voorzien van een tijd-volgorde-toestandsdiagram of andere visualisaties die
helpen de juiste functionele werking te begrijpen.

## Technische omschrijving

Bij de technische omschrijving wordt allereerst een blokschema getoond.

Daarnaast wordt bij eenheden met een sterk elektro-technische of AV component
(veelal interactives) een gedetailleerd aansluitschema getoond.

Aan de hand van deze schema's wordt de technische opbouw van de functionele
eenheid tekstueel toegelicht.

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

Een overzicht van actuele known issues ten aanzien van de functionele eenheid
met een korte toelichting en waar beschikbaar een workaround.

## Afspraken en verantwoordelijkheden

Een overzicht van:

* Interne contactpersonen
* SLAs (met link naar Topdesk)
* Naam bouwer functionele eenheid (met link naar Topdesk)
* Naam ontwerper functionele eenheid (met link naar Topdesk)

In het geval van specifieke afspraken dan worden deze hier toegelicht.

## Aanvullende documentatie

Een overzicht van aanvullende documentatie wordt door middel van een
[shortcode](https://gohugo.io/content-management/shortcodes/) op basis van de
metadata (in dit geval de page resources) automatisch gegenereerd.
