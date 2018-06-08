---
title: "Asset Informatie"
date: 2018-06-04T13:27:38+02:00
draft: true
---

In dit document wordt de informatie gespecificeerd die dient te worden
aangeleverd over alle technische componenten in het museum. Naturalis heeft deze
informatie nodig ten behoeve van het configuratie management (waaronder het
configureren van toegang tot het netwerk), de administratieve registratie
(asset management) en het genereren van documentatie pagina's op component niveau. 

## Variabelen

We maken onderscheid tussen generieke componenten en specifieke componenten die vallen onder een bepaalde component soort. Van generieke componenten willen we het onderstaande weten.


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

We maken naast generieke componenten een onderscheid tussen verschillende soorten component. Elke soort
component heeft specifieke standaard velden / variabelen.

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

Er zal een spreadsheet worden aangeleverd aan de installateur / bouwer / leverancier met voor elke component soort een tabblad met alle verschillende velden. De installateur voegt hier alle informatie aan toe. Op basis van de variabelen Naam & MAC kunnen wij de juiste configuratie toepassen. Denk hierbij aan het toewijzen van IP-adressen en het deployen van software. Daarnaast kunnen wij op basis van deze gegevens documentatie pagina's voor alle specifieke componenten worden gegenereerd die daarna kunnen worden aangevuld conform de [standaard component documentatie]({{< relref "component.md" >}}). Wanneer alle informatie compleet is zullen alle managed componenten in het asset management systeem worden ingeladen.

