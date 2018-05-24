# Documentatie

## Eisen / wensen

* Ondersteuning voor markdown
* Doorzoeken documentatie
* Metadata / frontmatter
* Custom content types en overzichten op basis van die typen
* Ondersteuning versiebeheer (drafts vs. published + mogelijk switchen tussen
  versies)
* Inline rendering diagrammen?
* Goeie themes voor documentatie en syntax highlighting beschikbaar
* (REST) API zodat vanuit Mattermost documentatie kan worden opgevraagd?
* 


## Vragen

1. Willen we één interface waar vanuit documentatie kan worden ingezien, de
   huidige status en openstaande meldingen kunnen worden getoond en acties
   worden geïnitieerd? Of voldoet het om uitsluitend statische content te
   renderen en doorzoekbaar te maken.
   Ofterwijl: ondersteuning van [multiple data
   sources](https://www.gatsbyjs.org/blog/2018-05-11-six-reasons-i-chose-gatsby/#4-multiple-data-sources)
   of slechts één?

2. Is er een native voorbeeld in Gitlab vereist?

## Kandidaten

### [Gatsby](https://www.gatsbyjs.org)

Voorbeelden:

* [React](https://reactjs.org)
  ([source](https://github.com/reactjs/reactjs.org))
* [mParticle](https://docs.mparticle.com/)

Voordelen:

* Ondersteuning voor multiple data sources en dus goed te integreren met
  meerdere systemen.
* Techniek inzetbaar voor meerdere frontend wensen.

Nadelen:

* Kost meer tijd en kennis om op te zetten
* Er zijn wel starters, maar geen heel duidelijk overzicht van themes.

### [Hugo](https://gohugo.io)

Voorbeelden:

* [1Password Support](https://support.1password.com/)

Themes:

* [hugoDocs](https://github.com/gohugoio/hugoDocs)
* [Kube](https://themes.gohugo.io/theme/kube)
* [Hugo Learn Theme](https://github.com/matcornic/hugo-theme-learn)

Voordelen:

* Out of the box ondersteuning voor veel functionaliteit die puur voor
  documentatie nodig is.
* Kost weinig tijd om mee aan de slag te kunnen.
* Wordt al gebruikt voor de NBA.

Nadelen:

* Mogelijkheden om te integreren zijn beperkt.
* Is minder snel dan Gatsby.
