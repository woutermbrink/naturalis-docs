---
title: "Revisie informatie"
date: 2018-05-25T11:15:17+02:00
draft: false
weight: 20
---

## Functionaliteit

* Op een documentatie pagina weergeven wanneer de laatste wijziging heeft
  plaatsgevonden.
* Op een documentatie pagina weergeven wie de laatste auteur is.
* Een onderscheid kunnen maken tussen pagina's die nog in de maak zijn (drafts)
  en die klaar zijn en op basis hiervan automatisch gepubliceerd worden of niet.

## Bron

Waar komt welke informatie vandaan?

| Wat                              | Waarde                    | Git | Metadata |
|----------------------------------|---------------------------|-----|----------|
| Wie is de laatste auteur         | Naam                      |  x  |          |
| Wanneer was de laatste wijziging | Datum                     |  x  |          |
| Is het een draft versie of niet  | true / false              |     |     X    |

De naam van de auteur en datum van de wijziging worden automatisch bijgehouden
in Git. Of iets een draft versie is of niet is de keuze van en een handmatige
handeling door de auteur.

## Hoe

Door het template van de static site generator Hugo aan te passen kunnen we
pagina variabelen tonen.

### Datum laatste wijziging

De `.Lastmod` variabele bevat de datum waarop het document voor het laatst is
gewijzigd. Deze is afkomstig van het `.AuthorDate` veld uit het `.GitInfo`
object.

Variabele: [`.Lastmod`](https://gohugo.io/variables/page/#page-variables)

### Naam laaste auteur

De naam van de auteur die de laatste wijziging heeft doorgevoerd kunnen we
uitlezen uit het `.GifInfo` object, deze informatie is afkomstig van Git.

Variabele: [`.AuthorName`](https://gohugo.io/variables/git/#the-gitinfo-object)

### Status

De status geeft een auteur zelf aan in de
[front-matter](https://gohugo.io/content-management/front-matter/#front-matter-variables)
van een pagina.

Hierdoor wordt de `.Draft` variabele op true of false gezet.

Variabele: [`.Draft`](https://gohugo.io/variables/page/#page-variables)
