---
title: "Documenteren"
date: 2018-06-13T11:47:15+02:00
draft: true
weight: 10
---

Om het museum na oplevering goed te kunnen beheren acht Naturalis degelijke
documentatie van groot belang. Onder documentatie worden alle technische en
functionele omschrijvingen van en beheerinformatie over de onderdelen in het
museum verstaan.

Bij het maken, aanleveren en organiseren van de documentatie zijn er een aantal
partijen betrokken:

* Het technische team van Naturalis
* Externe leveranciers:
  * De AV installateur
  * De bouwers van de verschillende tentoonstellingen
  * Leveranciers van content en software
  * Leveranciers van licht
  * Installateurs van licht

Zoals in [dit document]({{< relref "documentatie-platform.md" >}}) is beschreven
wordt gebruik gemaakt van een web framework ([Hugo](http://gohugo.io)) voor het
onderbrengen van de documentatie. De organisatie van de content in dit framework
staat [hier beschreven]({{< relref "documentatie.md" >}}).

De algemene verdeling van de verantwoordelijkheid bij het documenteren van het
museum is als volgt:

* Het technische team van Naturalis voert de redactie over de documentatie,
  stelt standaarden en is vraagbaak. Tevens wordt documentatie die relevant is
  voor de leveranciers door Naturalis (via deze site) ter beschikking gesteld.
* Externe leveranciers leveren informatie aan op basis van de
  [documentatiestandaarden]({{< relref "standaarden/documentatie/_index.md"
  >}}).

De werkwijze is daarbij afhankelijk van het type documentatie:

* Tekeningen, schema's en andere bestanden worden door leveranciers op een door
  Naturalis nader te specificeren wijze op Google Drive aangeleverd.
* Tekstuele beschrijvingen, handleidingen en eenvoudige schema's worden direct
  op de door Naturalis aan te wijzen plaats op de site verwerkt.
* Na het ontvangen van bijlagen of wijzigingen in de tekst zal Naturalis
  redactie voeren en de informatie waar nodig op de goede plek zetten.

## Aanleveren documentatie onderdelen

De documentatie die door leveranciers wordt aangeleverd heeft in beginsel
betrekking op één van de onderstaande [typen onderdelen]({{<
relref "naamgeving.md#typen-objecten" >}}) van het museum. De specifieke
informatie die voor elk van deze objecten wordt verwacht is te raadplegen via de
bijbehorende link.

* [Groepen]({{< relref "tentoonstelling.md" >}}): tentoonstellingen of experiences
* [Functionele eenheden]({{< relref "functionele-eenheid.md" >}}): interactives,
  exhibits etc.
* [Componenten]({{< relref "component.md" >}}): computers, beeldschermen etc.

## Aanleveren informatie over assets

Bij de aanlevering en registratie van informatie over individuele assets wordt
de volgende werkwijze gehanteerd:

1. Het technisch team van Naturalis levert een spreadsheet aan met voor elke
   soort component een tabblad met alle [relevante velden]({{< relref
   "asset-informatie.md" >}}).
1. De AV installateur voegt per asset alle relevante informatie toe aan de
   spreadsheet. Idealiter wordt ook de naam van de asset al in deze stap
   aangeleverd.
1. Het technisch team verwerkt de asset informatie (excl. naam) in het asset
   management systeem.
1. Het technisch team voegt per asset op basis van de naam een host toe, en
   voert het ID en het MAC-adres toe aan de host-variabelen in Ansible. Op basis
   hiervan kunnen ondermeer IP-adressen worden toegewezen en software worden
   geïnstalleerd.
1. Het technisch team maak voor alle specifieke componenten pagina's in de
   documentatie aan.
1. De AV installateur vult ten slotte de documentatiepagina van elk type
   component conform de [standaard component documentatie]({{< relref
   "component.md" >}}) aan.

## Aanleveren informatie over outlets en WCD's

Het technisch team levert voor elke tentoonstelling een spreadsheet aan. Elke
spreadsheet heeft twee tabbladen, één voor outlets en één voor WCD's.

Elke tabel heeft drie kolommen:

1. Naam WCD/outlet: De namen van alle WCD's en outlet's in een tentoonstelling (zaal).
1. Naam component: De namen van de aangesloten componenten. Bijvoorbeeld:
   `stamboom-stk-01` of `stamboom-cmp-01`
1. Status: Hier wordt aangegeven of de gegevens verwerkt zijn.

