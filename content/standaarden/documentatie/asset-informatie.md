---
title: "Asset Informatie"
date: 2018-06-04T13:27:38+02:00
draft: true
---

## Algemeen
Een overzicht van welke informatie over componenten we nodig hebben ten behoeve van configuratie automatisering en om te importeren in ons asset management systeem. Aanvullend specificeren we hoe deze data moet worden aangeleverd. 

## Variabelen 

Hier onder een overzicht van alle component soorten met daaronder de gewenste velden / variabelen.

De variabele ID wordt door het asset management systeem vastgesteld en hoeft dus niet te worden ingevuld. Dit ID wordt de referentie naar de pagina van het desbetreffende object in het assetmanagement systeem op basis waarvan we een link kunnen genereren. 

De naam is de unieke, universele en conform de naamgevingsstandaard vastgestelde naam die zowel in de documentatie, configuratie en asset management wordt gehanteerd. Deze naam stelt ons instaat om de link te leggen tussen docementatie, configuratie en asset.

De overige variablen wijzen voor zich. 

## Component soorten

We maken onderscheid tussen verschillende soorten component. Elk component soort heeft specifieke standaard velden / variabelen.

Daarnaast maken onderscheid tussen soorten componenten waarbij we de asset (het specifieke object) registreren in ons asset management systeem en waarbij we dat niet doen. Wel hebben we deze informatie nodig voor de documentatie, voorraadbeheerheer en bestellingsbeheer. 

### Managed assets

#### Computer
* ID:
* Naam: 
* Merk: 
* Model: 
* Serienummer: 
* MAC: 
* Leverancier: 

#### Monitor
* ID:
* Naam: 
* Merk: 
* Model: 
* Serienummer: 
* Leverancier:

#### Projector
* ID:
* Naam: 
* Merk: 
* Model: 
* Serienummer: 
* MAC: 
* Leverancier:

#### Armatuur
* ID:
* Naam: 
* Merk: 
* Model: 
* Serienummer: 
* Leverancier:

#### Controller
* ID:
* Naam: 
* Merk: 
* Model: 
* Serienummer: 
* MAC: 
* Leverancier:

#### Versterker
* ID:
* Naam: 
* Merk: 
* Model: 
* Serienummer: 
* Leverancier:

#### Speaker
* ID:
* Naam: 
* Merk: 
* Model: 
* Serienummer: 
* Leverancier:

### Unmanaged assets

#### Stekkerdoos
* Naam: 
* Merk: 
* IP-waarde:
* Aantal stopcontacten:
* kabellengte:
* Leverancier:

#### Kabel 
* Merk: 
* Type: 
* Connector: 
* Lengte:
* Kabeldikte: 
* Leverancier:

#### Lichtbron
* Merk: 
* Model: 
* Socket:
* Watt:
* Volt: 
* Leverancier:

#### IODevice 
* Naam: 
* Merk: 
* Model: 
* Leverancier:

## Werkwijze
Voorstel:
We leveren een spreadsheet aan met voor elke component een tabblat en met alle verschillende velden. De installateur voegt hier alle informatie aan toe. Op basis van de variabelen Naam & MAC kunnen wij de juiste configuratie toepassen. Denk hierbij aan het toewijzen van ip-adressen en het deployen van software. Wanneer alle informatie compleet is zullen alle managed componenten in het assetmanagement worden ingeladen. 