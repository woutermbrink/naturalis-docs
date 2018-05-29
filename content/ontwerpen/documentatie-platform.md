---
title: "Documentatie platform"
date: 2018-05-23T14:52:15+02:00
draft: false
---

## Achtergrond

Bij het bepalen van een werkwijze, de bestandsformaten en het publicatieplatform
voor documentatie zijn een aantal aspecten van belang:

* Er zijn veel verschillende vormen van documentatie (denk aan handleidingen,
  technische documentatie, CMDB / asset management, plattegronden etc.)
* Er zijn veel verschillende groepen gebruikers en beheerders van documentatie.
* En er is een bestaande situatie, waarbij documentatie is verspreid over veel
  verschillende systemen.

Uit een korte inventarisatie onder de verschillende afdelingen binnen de sector
ICT & AZ van Naturalis blijken er ten aanzien van de huidige situatie een aantal
problemen en beperkingen te spelen:

* Kopiëren van informatie
* Onduidelijkheid over actualiteit: versiebeheer ontbreekt grotendeels
* Beperkte vindbaarheid vanwege gebrekkige of ontbrekende navigatie
* Beperkte vindbaarheid vanwege gebrekkige doorzoekbaarheid
* Ontbrekende informatie
* Waarde van informatie: welke informatie is essentieel en welke niet?
* Gebrekkige leesbaarheid door inconsistente opmaak en indeling
* Gebrekkige leesbaarheid door ontbrekende formatting van code snippets
* Ontbrekende of gebrekkige templating
* Onduidelijke verantwoordelijkheden (over documentatie)
* Geen centrale locatie / afspraak
* Ontbreekt aan overzicht
* Documentatie als sluitpost: zou integraal onderdeel moeten zijn
* Geen toegang

Tegelijkertijd zijn er ook een aantal goede ervaringen:

* Het standaard beheerdocument dat bij oplevering van projecten wordt gebruikt
  is een template op basis waarvan het heel duidelijk is welke informatie
  ingevuld moet worden.
* Het standaard beheerdocument vormt het centrale ingangspunt voor de
  documentatie van een systeem.
* De documentatie op Github zorgt er voor dat code en documentatie bij elkaar
  staan.
* De ervaring met static site generators is dat deze goeie navigatie &
  consistente presentatie bieden.

## Oplossingsrichtingen

Ruwweg bestaan er een aantal oplossingsrichtingen voor het bijhouden en
ontsluiten van documentatie:

1. Gebruik van Google Drive eventueel gecombineerd met een documentbeheer add on.
1. Gebruik van een wiki, bijvoorbeeld op Github of Gitlab.
1. Gebruik van Markdown met versiebeheer in Git en publicatie door middel van een
   [static site generator](https://www.staticgen.com/).
1. Gebruik van een document management systeem.

Momenteel worden de eerste drie methoden in meer of mindere mate gebruikt bij
Naturalis.

De laatste optie heeft niet de voorkeur omdat:

* Deze systemen niet in het bijzonder zijn gericht op het ontsluiten van
  documentatie maar eerder op het beheren van grote hoeveelheden documenten
  (bijvoorbeeld voor archiefdoeleinden).
* Dit een introductie zou betekenen van een geheel nieuw systeem met
  bijbehorende beheerlasten.

De voor- en nadelen van de overige drie oplossingen staan hieronder opgesomd.

### Google Drive

Voordelen:

* Wordt gebruikt in de gehele organisatie.
* Biedt uitgebreide *native* features voor samenwerking en het leveren van feedback.
* Is makkelijk in gebruik.
* Biedt mogelijkheden voor templates.
* Biedt *native* ondersteuning voor het geven van lees- en schrijfrechten.

Nadelen:

* Doorzoekbaarheid is redelijk maar lang niet perfect.
* Er zijn add ons nodig voor document beheer.
* Er zijn beperkte mogelijkheden voor metadatering en het gebruik van metadata.
* In templates eveneens beperkte mogelijkheden voor metadata.
* De mogelijkheden voor de navigatie zijn beperkt.
* De software is closed source.

### Wiki

Voordelen:

* Maakt het navigeren via links en een menu makkelijker ten opzichte van Google
  Drive.
* In het geval van Github of Gitlab wiki hoeft er geen aparte site te worden
  gehost.
* Veel open source software beschikbaar.

Nadelen:

* Het gebruik van Wiki of Markdown syntax vergt kennis van de gebruiker.
* In het geval van Github geen open source software.

### Markdown en static site generators

Voordelen:

* Scheiding van data en presentatie maakt een consistente opmaak en
  het gebruik van uiteenlopende bestandsformaten (bijv. HTML, JSON en PDF)
  mogelijk.
* Code snippets worden native ondersteunt.
* Maakt het doorzoeken en highlighten van zoekresultaten mogelijk.
* Maakt goede en consistente navigatie (bladeren van hoofdstukken, duidelijk
  hoofd- en submenu, breadcrumbs) mogelijk.
* Biedt in de vorm van zogeheten 'frontmatter' uitgebreide mogelijkheden voor
  metadatering van documentatie en het presenteren en zoeken op basis van die
  metadata.
* Biedt basis mogelijkheden op basis van die metadata voor documentbeheer.
* Biedt mogelijkheden om specifieke content typen / taxonomiën te definiëren.
* Biedt mogelijkheden voor templates / archetypes.
* Biedt de mogelijkheid om een eigen herkenbaar theme te gebruiken waarmee de
  documentatie ook een bepaalde status krijgt.
* Biedt de mogelijkheid om documentatie bruikbaar te maken op mobiele devices.
* Maakt het mogelijk om documentatie onder te brengen in dezelfde repo als de
  betreffende software.
* Sommige static site generators bieden mogelijkheden om ook niet-Markdown
  documenten (denk aan PDF's, afbeeldingen e.d.) te metadateren en te
  bundelen bij het betreffende onderwerp.
* Veel open source software beschikbaar.

Nadelen:

* Het gebruik van Markdown syntax vergt kennis van de gebruiker.
* Het gebruik van Git vergt kennis van de gebruiker.
* Het plaatsen van opmerkingen en suggesties is minder makkelijk en afhankelijk
  van externe tools.
* De mogelijkheden om de toegang te regelen zijn relatief beperkt.

### Keuze oplossingsrichting

Op basis van bovenstaande voor- en nadelen kiezen we voor de inzet van Markdown
en static site generators. Deze oplossingsrichting biedt op het vlak van
metadatering, document beheer, presentatie en vindbaarheid de meeste
mogelijkheden. Duidelijke nadelen ten opzichte van Google Drive zijn de kennis
die vereist zijn bij de gebruikers van de (weliswaar relatief eenvoudige)
Markdown-syntax en Git en het leveren van feedback.

Deze nadelen zijn te ondervangen door het bieden van ondersteuning op het vlak
van Markdown en Git, het gebruik / de aanbeveling van software die het werken
met Markdown en Git vergemakkelijkt en de inzet van software die het geven
van commentaar mogelijk maken.

## Static site generators

Op [staticgen.com](https://www.staticgen.com) wordt een uitgebreide lijst van
vrijwel uitsluitend open source static site generators bijgehouden. De top vijf
van meest populaire / gebruikte static site generators is momenteel:

1. [Jekyll](http://jekyllrb.com/)
1. [Hugo](http://gohugo.io/)
1. [Next](https://learnnextjs.com/)
1. [Hexo](http://hexo.io)
1. [Gatsby](http://gatsbyjs.org/)

Twee tools op deze lijst (Next en Gatsby) zijn relatief nieuw en
betreffen [React](https://reactjs.org/) gebaseerde frameworks die generieker
zijn dan de andere drie. Zo ondersteunt Gatsby niet alleen Markdown als databron
maar kunnen allerlei externe API's aangewend worden.

Beide tools zijn echter relatief nieuw en hoewel ze beiden al een grote
community hebben, geldt voor beide projecten dat de out-of-the-box functies
relatief beperkt zijn. Met andere woorden: je kunt meer met deze tools, maar
daar zul je zelf wel tijd en energie in moeten steken.

Voor het doel om documentatie op een bruikbare manier te ontsluiten lijkt dit
overkill te zijn. Sterker, het belang om daar snel mee aan de slag te kunnen
is daarbij belangrijker.

Om die reden is gekeken naar de overige drie, meer 'traditionele' static site
generators.

### Eisen / wensen

Bij de vergelijking van Jekyll, Hugo en Hexo zijn de volgende eisen en wensen
gehanteerd:

* Native ondersteuning voor [Markdown](https://en.wikipedia.org/wiki/Markdown)
* Kunnen doorzoeken van documentatie
* Ondersteuning van goede navigatie door documentatie (denk aan menu's,
  breadcrumbs etc.)
* Ondersteuning van metadata / frontmatter
* Custom content types of taxonomiën en overzichten en onderlinge links op basis
  van die typen
* Ondersteuning voor templates voor specifieke content typen
* Ondersteuning van versiebeheer individuele documenten (drafts vs. published)
* Inline rendering diagrammen op basis van
  [mermaid](https://mermaidjs.github.io/)
* Beschikbaarheid van goeie themes voor documentatie en syntax highlighting
* Theming framework waarmee makkelijk kleine wijzigingen ten opzichte van
  bestaande themes kunnen worden doorgevoerd
* Ondersteuning voor zowel HTML als JSON output

In onderstaande tabel zijn de drie kandidaten aan de hand van een aantal
belangrijke eisen en wensen vergeleken:

|  | Jekyll | Hugo | Hexo |
|-----------------------------------------|--------------------------------------------------------------------------------------------|------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| Native ondersteuning Markdown | Goed | Goed | Goed |
| Doorzoekbaarheid | Mogelijk op basis van o.m. lunr.js en Algolia | Mogelijk op basis van o.m. lunr.js en Algolia | Mogelijk via Algolia |
| Navigatiemenu | Ondersteund | Ondersteund | Ondersteund |
| Table of contents pagina | Ondersteund | Ondersteund | Ondersteund |
| Metadata / frontmatter | Ondersteund | Ondersteund | Ondersteund |
| Custom content typen | Nee, alleen categories en tags | Ja, Hugo ondersteunt content types en taxonomies. | Nee, alleen categories en tags |
| Specifieke templates voor content typen | In Jekyll kun je posts maken op basis van verschillende layouts. Maar dus geen content types | Ja, met Hugo kun je in de vorm van archetypes specifieke templates aanmaken. | In Hexo kun je posts maken op basis van verschillende layouts. Maar dus geen content types |
| Drafts vs. published | Ondersteund | Ondersteund | Ondersteund |
| Ondersteuning [mermaid](https://mermaidjs.github.io) diagrammen | Mogelijk via plugins | Beschikbaar in themes | Mogelijk via plugins |
| Beschikbaarheid kwalitatieve themes | Zeer veel themes beschikbaar | Redelijk | Redelijk |
| Overerving templates en styling | Ja | Ja, o.m. d.m.v. partials | Ja, o.m. d.m.v. partials |
| Ondersteuning HTML en JSON output | Beiden worden native ondersteund | Beiden worden native ondersteund | HTML native, JSON via een plugin |
| Snelheid | Beperkt | Zeer snel | Behoorlijk tot zeer snel |
| Ondersteuning Github en Gitlab pages | Beiden | Beiden | Beiden |
| Installatie | Matig (op basis van Ruby gems (ook de plugins)) | Zeer makkelijk (één binary op basis van Go) | Redelijk (op basis van node.js) |

### Keuze static site generator

Zoals uit bovenstaande tabel blijkt ontlopen de static site generators elkaar
niet veel. Een aantal doorslaggevende factoren hebben geleid tot een keuze voor
Hugo:

* Hugo biedt in de vorm van taxonomieën een zeer krachtige feature ten opzichte
  van de andere kandidaten. Op basis van deze feature is het mogelijk om het
  uitgangspunt om informatie maar op één plek bij te houden en vindbaar te maken
  in de praktijk te brengen. Op die manier kunnen we voor elke tentoonstelling,
  interactive en type component een eigen pagina aanmaken.
* De installatie van Hugo is dankzij Go erg makkelijk.
* Hugo wordt al gebruikt voor andere projecten binnen Naturalis.
* Het kost relatief weinig tijd om met Hugo aan de slag te kunnen.
* Hugo biedt sinds kort de mogelijkheid om niet-Markdown bestanden in de vorm
  van [Page Resources](https://gohugo.io/content-management/page-resources/) te
  voorzien van metadata en te koppelen aan het bijbehorende document.
* Hugo biedt een feature om data opgeslagen in bijv. JSON of YAML als databron
  te gebruiken.

