---
title: "Tabellen"
date: 2018-05-23T14:34:19+02:00
draft: true
---

## Standaard

* CSV, ODS of XLSX
* Naturalis definieert structuur
* Bestanden zijn importeerbaar

{{% notice tip %}}
Handig om snel kleine tabellen in Markdown te maken: [Markdown Tables Generator](https://www.tablesgenerator.com/markdown_tables#)
{{% /notice %}}

## Argumentatie

### Opties

Er zijn verschillende file formats voor tabellen en spreadsheet in omloop. Zie
[Wikipedia](https://en.wikipedia.org/wiki/List_of_file_formats#Spreadsheet) voor
een overzicht.

Naturalis hanteert een beleid waarbij open standaarden de voorkeur hebben.
Daarnaast is het bij de selectie van file formats van belang dat de file formats
breed gedragen ondersteuning en een grote gebruikersgroep hebben.

De onderstaande formats voldoen aan die voorwaarden:

* [CSV](https://en.wikipedia.org/wiki/Comma-separated_values)
* [ODS](https://en.wikipedia.org/wiki/OpenDocument)
* [XLSX](https://en.wikipedia.org/wiki/Office_Open_XML)

### Eisen

* Import in een database
* Conversie naar Markdown en HTML
* Webbased weergave

### Import mogelijkheden

Alle drie de file formats zijn geschikt voor het importeren in een database mits:

* In de eerste rij de (juiste) kollommen worden gedefineerd
* Er alleen gebruik wordt gemaakt van kolommen en rijen die gelden in de hele tabel
* Alleen alfa nummerieke tekens, anders de data / tekst tussen "ḧaakjes" plaatsen

### Conversie

Overzicht van verschillende open source tools waarmee de genoemde formats
geconverteerd kunnen worden:

#### CSV

CSV to MD & HTML conversie:

* [github.com/mplewis/csvtomd](https://github.com/mplewis/csvtomd)
* [github.com/stevecat/table-magic](https://github.com/stevecat/table-magic)
* [Pandoc](https://pandoc.org/)

#### ODS

ODS to MD & HTML conversie tools:

* [github.com/kennytm/ods2md](https://github.com/kennytm/ods2md)
* [Pandoc](https://pandoc.org/)

#### XLSX

Alleen online of op Windows draaiende software gevonden voor de directe
conversie van XLSX naar MD maar programma's die XLSX bestanden kunnen editen
kunnen deze bestanden meestal ook opslaan als CSV of ODS. Daarnaast hebben
deze programma's ook vaak een export naar HTML of export to web
functionaliteit.

### Weergave

Overzicht van webbased weergave opties:

* [Markdown Tables](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#tables)
* [EtherCalc](https://ethercalc.net/#)
* [Google Sheets](https://www.google.com/sheets/about/)
* [JavaScript Open-Source Spreadsheets and Data Grids](https://jspreadsheets.com/)
* [Handsontable](https://handsontable.com/)

## Conclusie

CSV, ODS & XLSX voldoen alle drie. Voor alle drie de formats bestaan voldoende
conversie mogelijkheden. Wel moeten de tabellen dusdanig gestructureerd zijn en
syntax hebben dat ze importeerbaar zijn. Naturalis zal in afstemming met
leveranciers de gewenste kolommenstructuur definiëren.
