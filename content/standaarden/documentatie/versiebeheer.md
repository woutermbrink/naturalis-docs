# Versiebeheer

## Functionaliteit

* Op een documentatie pagina weergeven wie de laatste auteur is.
* Op een documentatie pagina weergeven wanneer de laatste wijziging heeft plaatsgevonden. 
* Een onderscheid kunnen maken tussen pagina's die nog in de maak zijn (drafts) en die klaar zijn en op basis hiervan automatisch worden gepubliseerd of niet.

## Source
Waar komt welke informatie vandaan? 

| Wat                              | Waarde                    | GIT | Metadata |
|----------------------------------|---------------------------|-----|----------|
| Wie is de laatste auteur         | Naam                      |  x  |          |
| Wanneer was de laatste wijziging | Datum                     |  x  |          |
| Is het een draft versie of niet  | true / false              |     |     X    |

De naam van de auteur en datum van de wijziging worden automatisch bijgehouden in GIT. 
Of iets een draft versie is of niet is de keuze van en een handmatige handeling door de auteur. 

## Hoe
Door het template van de static site generators Hugo aan te passen kunnen we pagina variabelen tonen. 


### Naam laaste auteur
De variabele kunnen we uitlezen uit het .GifInfo object, deze informatie is afkomstig van GIT.  

Variabele: [.AuthorName](https://gohugo.io/variables/git/#the-gitinfo-object)

### Datum laatste wijziging
De .Lastmod variabele bevat deze waarde. Deze is afkomstig van het .AuthorDate veld uit het .GitInfo object. 

Variabele: [.Lastmod](https://gohugo.io/variables/page/#page-variables)

### Status
De status geeft een auteur zelf aan in de [front-matter](https://gohugo.io/content-management/front-matter/#front-matter-variables) van een pagina.

Hierdoor wordt de .Draft variabele true of false gezet. 

Variabele: [.Draft](https://gohugo.io/variables/page/#page-variables)



