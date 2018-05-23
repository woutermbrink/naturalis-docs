# Tabellen

## Standaard

* CSV, ODS of XLSX
* Naturalis definieert structuur
* Bestanden zijn importeerbaar

## Opties

### File formats: 

Er zijn verschillende file formats in oploop, hieronder een selectie van drie op basis van de wens voor een openstandaard die veel in gebruik is. 

* [CSV](https://en.wikipedia.org/wiki/Comma-separated_values)
* [ODS](https://en.wikipedia.org/wiki/OpenDocument)
* [XLSX](https://en.wikipedia.org/wiki/Office_Open_XML)

Zie voor een totaal overzicht: https://en.wikipedia.org/wiki/List_of_file_formats#Spreadsheet

## Argumentatie

### Eisen

* Conversie naar Markdown 
* Conversie naar HTML
* Import in een database
* Webbased weergave

### Import mogelijkheden

Alle drie de fileformats zijn geschikt voor het importeren in een database mits:
* In de eerste rij de (juiste) kollommen worden gedefineerd
* Er alleen gebruik wordt gemaakt van kolommen en rijen die gelden in de hele tabel 
* Alleen alfa nummerieke tekens, anders de data / tekst tussen "ḧaakjes" plaatsen

### Conversie
Overzicht van verschillende open source software beschikbaar voor conversie.

* CSV
CSV to MD & HTML
https://github.com/mplewis/csvtomd
https://github.com/stevecat/table-magic
https://pandoc.org/

* ODS
ODS to MD & HTML
https://github.com/kennytm/ods2md
https://pandoc.org/

* XLSX
Alleen online of op windows draaiende software gevonden voor de directe conversie van XLSX naar MD maar programma's die XLSX bestanden kunnen editten kunnen deze bestanden meestal ook opslaan als CSV of ODS. Daarnaast hebben deze programma's ook vaak een export naar HTML of export to web functionaliteit. 

### Weergave 
Overzicht van webbased weergave opties.

* [Markdown Tables](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#tables)
* [EtherCalc](https://ethercalc.net/#)
* [Google Sheets](https://www.google.com/sheets/about/)
* [JavaScript Open-Source Spreadsheets and Data Grids](https://jspreadsheets.com/)
* [Handsontable](https://handsontable.com/)

## Conclusie

CSV, ODS & XLSX voldoen alle drie. Daarnaast zijn er voldoende conversie mogelijkheden. Wel moeten de tabellen dusdanig gestructureerd zijn en syntax hebben dat ze importeerbaar zijn. Naturalis zal de gewenste colommen sturctuur definieren.
