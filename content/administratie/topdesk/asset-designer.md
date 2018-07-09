---
title: "Asset Designer"
date: 2018-07-04T10:28:54+02:00
draft: true
---

Voor de verschillende groepen, functionele eenheden en componenten moet er een asset template worden aangemaakt in topdesk. 

Overzicht [type assets](http://docs.museum.naturalis.nl/latest/standaarden/documentatie/naamgeving/#typen-objecten) 

In de template zetten we de vereiste velden op basis van wat er staat in [asset-informatie](http://docs.museum.naturalis.nl/latest/standaarden/documentatie/asset-informatie/)

## Asset Designer

Open the Asset Designer

* Click create template

* Enter name 

In the asset template

### Fieldset
Om de gewenste velden toe te voegen aan een asset gebruiken we de Fieldset widget. 

* Add widget select Fieldset

* Add field

In case of existing field:

* Add an existing field

* Select field in dropdown

In case of new field:

* Create new field 

* Enter label name

* Set type to text 

### General
De bovenste widget bepaalt de naam van de asset. In het geval van een component krijgt deze een default naam met nummer. 

Zodra deze asset een rol krijgt wordt de naam ook de naam van de rol. 

* Change icon

* Set numbering

Prefix: nn-afkorting component type-
Sequence lenght: 2
Start value: 1

* Set Summary: Merk + Model in het geval het om een component type gaat. 

* Publish: uncheck visible in self-service portal if component.

### Relationships

We maken gebruik van de custom link type "onderdeel van". Om hier van gebruik te kunnen maken moeten we dit link type toewijzen aan de asset.

* Assign Link Types

* Selecteer onderdeel van 

{{% tip %}}
Om een asset dependent te maken middels een link, moet je vanuit de undependent asset een link maken naar de dependent asset. 
{{% /tip %}}

### Google sheet
Corresponderend met de velden in het asset template is een voor elk type component een tabel in een google sheet. Zie hieronder een overzicht 

Computer
* beoogde naam	(rol die de asset moet krijgen, leeg tot bekend)
* merk	
* model	
* serienummer	
* mac	
* leverancier	(overeenkomende met een in topdesk aangemaakte leverancier)
* locatie (overeenkomende met een in topdesk aangemaakte locatie)

Projector
* beoogde naam	
* merk	
* model	
* serienummer	
* mac	
* leverancier	
* locatie

Controller
* beoogde naam	
* merk	
* model	
* serienummer	
* mac	
* leverancier	
* locatie

Beeldscherm
* beoogde naam	
* merk	
* model	
* serienummer	
* leverancier	
* locatie

Versterker
* beoogde naam	
* merk	
* model	
* serienummer	
* leverancier	
* locatie

Speaker
* beoogde naam	
* merk	
* model	
* serienummer	
* leverancier	
* locatie

Component
* beoogde naam	
* merk	
* model	
* serienummer	
* leverancier	
* locatie






