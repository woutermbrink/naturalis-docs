---
title: "Documentatie"
date: 2018-05-29T11:06:00+02:00
draft: true
---

Zoals in [dit document](../documentatie-platform) is toegelicht is gekozen voor
[Hugo](http://gohugo.io) als framework voor het schrijven en beheren van alle
documentatie. In dit document lees je hoe we Hugo precies inrichten en
gebruiken.

## Organisatie

Bij de indeling en organisatie van de content maken we gebruik van twee
belangrijke features van Hugo:

* [Taxonomies](https://gohugo.io/content-management/taxonomies/)
* [Page bundles](https://gohugo.io/content-management/page-bundles/)

Op basis van de eerste feature kunnen we de
[datastructuur](/standaarden/documentatie/naamgeving/#datastructuur) die we
hanteren voor de organisatie van assets ook toepassen op de organisatie van de
documentatie.

### Mappenstructuur

De mappenstructuur wordt in hoofdzaak bepaald door de standaardindeling van
Hugo. De content directory heeft echter op basis van de genoemde datastructuur
een specifieke indeling:

```bash
content
├── componenten
│   └── nuc
├── decors
├── exhibits
├── experiences
├── faciliteiten
├── infrastructuren
├── interactives
│   └── stamboom
├── shows
├── signages
└── tentoonstellingen
    ├── livescience
    └── oerparade
```

Elke `Groep` en `Functionele eenheid` die we voor het museum hanteren heeft een
eigen map (`interactives`, `tentoonstellingen` etc.). In deze mappen vind je
vervolgens submappen van de specifieke interactives (`stamboom` in het
bovenstaande voorbeeld), tentoonstellingen (`livescience` en `oerparade`) etc.

Daarnaast is er een map `componenten`. In deze map vind je submappen van alle
specifieke componenten (`nuc` in dit voorbeeld).

Elke (sub)map in de content directory bevat specifieke informatie voor de
betreffende interactive, component etc. Heeft bepaalde informatie betrekking op
meerdere onderdelen, bijvoorbeeld op een specifieke tentoonstelling of een
specifiek component, dan dient die informatie op dat niveau te worden
toegevoegd.

### Bestanden

Op basis van bovenstaande indeling krijgt elk onderdeel in het museum een eigen
documentatiepagina. Concreet wordt deze geschreven in een `_index.md` bestand in
de map van het betreffende onderdeel:

```bash
content
├── componenten
│   └── nuc
│       └── _index.md
├── decors
├── exhibits
├── experiences
├── faciliteiten
├── infrastructuren
├── interactives
│   └── stamboom
│       └── _index.md
├── shows
├── signages
└── tentoonstellingen
    ├── livescience
    │   └── _index.md
    ├── oerparade
    │   ├── _index.md
    └── _index.md
```

Het `_index.md` bestand heeft, zoals [hier nader
uitgelegd](https://gohugo.io/content-management/organization#index-pages-index-md),
een specifieke rol in Hugo. Kort gezegd kun je in het `_index.md` bestand
metadata en inhoud toevoegen die op zogeheten lijstpagina's wordt getoond (Hugo
maakt een onderscheid tussen list- en single pages).

{{% notice note %}}
De documentatiepagina van elk onderdeel in het museum is steeds een list page
omdat we gebruik maken van
[taxonomies](https://gohugo.io/content-management/taxonomies/). Specifiek
gebruikt Hugo voor content en metadata over *taxonomies* (`exhibit`,
`tentoonstellingen` etc.) en *taxonomy terms* (`stamboom`, `nuc` etc.) altijd
list pages.
{{% /notice %}}

Naast een `_index.md` document staan ook aanvullende bestanden over dit
onderdeel in de submap van het betreffende onderdeel:

```bash
content
├── componenten
│   └── nuc
│       ├── _index.md
│       ├── afbeelding.jpg
│       └── plattegrond.dwg
```

Deze werkwijze sluit aan op de [page
bundle](https://gohugo.io/content-management/page-bundles/) feature in Hugo.
Behalve dat alle bestanden over een onderdeel handig in dezelfde map staan,
kunnen ze op deze manier ook makkelijk als [page
resource](https://gohugo.io/content-management/page-resources/) op de
documentatiepagina worden getoond en van metadata worden
voorzien.

## Versiebeheer

Bij het versiebeheer van de documentatie hebben we te maken met twee typen
documenten:

1. Tekstuele omschrijvingen
1. Bijlagen in een specifiek bestandsformaat

Daarnaast kan een onderscheid worden gemaakt tussen:

1. Documenten die constant evolueren en waarvan bij het beheer vooral de laatste
   versie van belang is.
1. Documenten die alleen relevant zijn in een bepaalde fase van de ontwikkeling.

Elk van deze gevallen stelt andere eisen aan het versiebeheer.

### Tekstbestanden en metadata

Zoals [hier](/standaarden/documentatie/tekst) nader wordt toegelicht wordt alle
tekstuele documentatie geschreven in Markdown. Markdown bestanden bestaan uit
*plain text* bestanden op basis van een simpele syntax.

[Git](https://git-scm.com/) is een version control systeem dat uitermate
geschikt is voor het versiebeheer van plain text bestanden. Mede om die reden
bieden static site generators zoals Hugo goede integratie met Git. Behalve de
Markdown bestanden kan ook de hele configuratie van Hugo in Git worden beheerd.

Om die reden wordt ook de documentatie van Naturalis in Git beheerd. Git
is een decentraal systeem met ondersteuning voor diverse workflows. Momenteel
maakt Naturalis gebruik van [Github](https://github.com) dat als centrale plek
voor de *repositories* dient. Github maakt het ook voor gebruikers zonder al te
veel voorkennis om via een webinterface documenten direct te bewerken.

Voor het beheren van de documentatie zal mogelijk van
[Gitlab](https://gitlab.org), dat een zelfde gecentraliseerde workflow biedt,
gebruik worden gemaakt.

### Bijlagen in een ander formaat

Naast tekstbestanden bevat de documentatie ook andersoortige bestanden (denk aan
afbeeldingen, CAD-bestanden etc.). Hoewel het mogelijk is om die direct in een
Git repository te beheren is Git niet specifiek goed in het beheren van
verschillende versies van *binary* bestanden. Dit heeft te maken met de wijze
waarop verschillen worden bijgehouden tussen versies van bestanden. Daarnaast
zijn er op Github en Gitlab beperkingen ten aanzien van de omvang van
individuele bestanden.

Hoewel het ook mogelijk is om door middel van extensies van Git (een bekend
voorbeeld is Git LFS) grote bestanden te beheren in een Git repo is vanwege
gebruiksgemak en een aantal technische beperkingen gekozen voor een alternatieve
oplossing op basis van de Page resources feature in Hugo.

Het bijhouden van page resources / bijlagen ziet er in `_index.md` als volgt
uit:

```yaml
resources:
- title: Overzicht
  src: overzicht.jpg
- title: Technische tekening
  src: technischetekening.dwg
  params:
    url: "https://drive.google.com/open?id=1StqBLUYaN9pp-rURX5sXHILyC9J2CJYg"
```

De eerste page resource in dit voorbeeld staat opgeslagen in de directory van
het betreffende onderdeel, terwijl voor de tweede resource verwezen wordt naar
een externe URL. Om dit te laten werken is het wel nodig om een bestand
(`technischetekening.dwg` in dit voorbeeld aan te maken en de templates voor de
betreffende pagina's te verwijzen naar deze parameter.

Dummy bestanden voeg je als volgt toe:

```bash
touch technischetekening.dwg
git add technischetekening.dwg
git commit -m 'Voeg technische tekening toe'
```

Voor het tonen van alle bijlagen op de pagina met de juiste verwijzing voegen we
in templates een conditional toe, bijvoorbeeld:

```html
{{ range .Resources }}
  {{ if isset .Params "url" }}
  <li><a href="{{ .Params.url }}" target="_blank">{{ .Title }}</a></li>
  {{else}}
  <li><a href="{{ .RelPermalink }}" target="_blank">{{ .Title }}</a></li>
  {{ end }}
{{ end }}
```

Bestanden die groter zijn dan 5 MB worden in principe op een externe locatie
opgeslagen. Hiervoor gebruiken we een Team Drive op Google Drive met precies
dezelfde mappenstructuur als in Git. Bestanden in die mappen krijgen behalve
een duidelijke naam ook een datum in de titel (YYYY-MM-DD) mee, bijvoorbeeld:

`DO I Love Dino's - 2018-12-03.pdf`

### Constant evoluerende documenten

Het uitgangspunt van de documentatie is om snel relevante informatie aan te
kunnen bieden. Bij veel documentatie is het daarbij voornamelijk van belang om
de meest actueel bijgewerkte versie te vinden. Zo is het voor het gebruik van
een handleiding van weinig toegevoegde waarde om te weten wat er in een oude
versie stond. Belangrijker is dat je weet dat de laatste inzichten zijn
verwerkt.

Voor deze categorie bestanden is versiebeheer weliswaar van belang, maar is het
voor de gebruiker niet noodzakelijk om meerdere versies naast elkaar te kunnen
zien.

Voor deze categorie bestanden voldoet het versiebeheer op basis van Git en de
draft status in Hugo bestanden. Concreet werkt iedereen daarbij een in
development branch en merged een redacteur na review wijzigingen naar de master
branch. De master branch bevat daarom altijd de goedgekeurde en gecontroleerde
versie van de documentatie.

Geheel nieuwe documenten krijgen daarnaast in eerste instantie een 'draft'
status die pas nadat het document is geriewd in published wijzigt.

### Fase-gebonden documenten

Naast deze categorie zijn er ook documenten die worden geproduceerd als
onderdeel van een specifieke ontwikkelfase. Voor deze documenten geldt dat,
zeker tijdens de ontwikkelfase, maar ook daarna terug gekeken moet kunnen worden
naar het oorspronkelijke ontwerp.

Ook deze documenten ontwikkelen zich, maar daarbij geldt in principe hetzelfde
uitgangspunt als bij de overige documenten: uitsluitend de meest actuele versie
van bijvoorbeeld een DO ontwerp is relevant. Behalve de fase zijn bij
documenten ook de auteur en de datum van een document van belang. De metadata
van resources ziet er daarom als volgt uit:

```yaml
resources:
- title: Overzicht
  src: overzicht.jpg
  params:
    author: Extern ontwerpbureau
    date: 2018-05-03
    phase: SO
- title: Technische tekening
  src: technischetekening.dwg
  params:
    author: Extern ontwerpbureau
    date: 2018-05-18
    phase: DO
    url: "https://drive.google.com/open?id=1StqBLUYaN9pp-rURX5sXHILyC9J2CJYg"
```
