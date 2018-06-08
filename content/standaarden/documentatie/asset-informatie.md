---
title: "Asset informatie"
date: 2018-06-04T13:27:38+02:00
draft: true
---

In dit document wordt de informatie gespecificeerd die dient te worden
aangeleverd over alle technische componenten in het museum. Naturalis heeft deze
informatie nodig ten behoeve van het configuratie management (waaronder het
configureren van toegang tot het netwerk), de administratieve registratie
(asset management) en het genereren van documentatie pagina's op component
niveau.

## Variabelen

We maken onderscheid tussen generieke componenten en specifieke componenten die
vallen onder een bepaalde component soort. Van generieke componenten willen we
het onderstaande weten.

* Merk:
* Model:
* Leverancier:

Hieronder is een overzicht opgenomen van alle informatie die per soort component
dient te worden aangeleverd.

De variabele ID wordt door het asset management systeem vastgesteld en hoeft dus
niet te worden ingevuld. Dit ID wordt de referentie naar de pagina van het
desbetreffende object in het asset management systeem op basis waarvan er een
link kan worden gelegd tussen bijvoorbeeld het monitoring systeem en het asset
in het asset management systeem.

De naam is de unieke, universele en conform de [naamgevingsstandaard]({{< relref
"naamgeving.md" >}}) vastgestelde naam die zowel in de documentatie,
configuratie en asset management wordt gehanteerd. Deze naam stelt ons in staat
om de link te leggen tussen docementatie, configuratie en asset.

De naam van de leverancier is in het geval van componenten die door de AV
installateur worden geleverd gelijk aan de naam van de AV installateur.

De overige variablen wijzen voor zich.

## Component soorten

We maken naast generieke componenten een onderscheid tussen verschillende
soorten component. Elke soort component heeft specifieke standaard velden /
variabelen.

Daarnaast maken we een onderscheid tussen soorten componenten waarbij we de
asset (het individuele object) registreren in ons asset management systeem en
waarbij we dat niet doen. Wel hebben we deze informatie nodig voor de
documentatie, voorraadbeheerheer en bestellingsbeheer.

### Managed assets

#### Computer

* ID:
* Naam:
* Merk:
* Model:
* Serienummer:
* MAC:
* Leverancier:

#### Beeldscherm

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
* Kabellengte:
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

#### Knop

* Naam:
* Merk:
* Model:
* Leverancier:

## Werkwijze

Bij de aanlevering en registratie van asset informatie wordt de volgende
werkwijze gehanteerd:

1. Het technisch team van Naturalis levert een spreadsheet aan met voor elke
   soort component een tabblad met alle relevante velden.
1. De installateur voegt per asset alle en relevante informatie toe aan de
   spreadsheet. Idealiter wordt ook de naam van de asset al in deze stap
   aangeleverd.
1. Het technisch team verwerkt de asset informatie (excl. naam) in het asset
   management systeem.
1. Het technisch team voegt per asset op basis van de naam een host toe, en
   voert het ID en het MAC-adres toe aan de host-variabelen in Ansible. Op basis
   hiervan kunnen ondermeer IP-adressen worden toegewezen en software worden
   geïnstalleerd.
1. Het technisch team maak voor alle specifieke componenten pagina's in de
   documentatie aangemaakt.
1. De AV installateur vult ten slotte de documentatiepagina van elk type
   component conform de [standaard component documentatie]({{< relref
   "component.md" >}}) aan.
