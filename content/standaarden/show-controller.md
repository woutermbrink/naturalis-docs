# Showcontroller
Per zaal is er 1 show controller. De show controller stuurt het licht, geluid en andere effecten
aan die variabel zijn gedurende de dag, of variabel zijn als reactie op een actie.

1. [Input control](#input-control)
2. [Output control](#output-control)
3. [OS](#os)
4. [Poorten](#poorten)
5. [Aanpasbaarheid](#aanpasbaarheid)
6. [Backup](#backup)
7. [Formfactor](#formfactor)
8. [Updates](#updates)



## Specificaties types
* Input control
* Output control
* OS
* Poorten
* Aanpasbaarheid
* Backup
* Formfactor
* Updates

## Input control
De showcontroller moet extern via ethernet bestuurd kunnen worden.

#### Opties
* REST API
* OSC
* Serial
* Telnet
* Een of ander ander protocol

#### Keuze
REST API. Dit is de IT standaard voor het aansturen van software. Het bied een logische strucktuur.
De REST api moet in iedergeval de volgende functies ondersteuen:
* Uitlezen van lijst van shows
* Welke show op dit moment in werking is
* Straten/stoppen van een show


## Output control
De showcontroller moet devices kunnen aansturen. Veel output protocollen is gewenst.

#### Opties
* REST
* OSC
* Serial
* Telnet
* DMX
* Nog heel veel

#### Keuze
Minimaal REST

## OS
Omdat elk stuk software op een OS draait moet er een OS gekozen worden. Soms is het een all in one 
box en en is het OS al geintegreerd. Keuze van OS enigszinds van belang.

#### Opties
* Integraded
* Windows
* Linux
* Mac

#### Keuze
Linux of Integraded.

## Poorten
Er moet een aantal poorten zitten waarmee de showcontroller met kan sturen.

#### Opties
* Ethernet
* Serial
* Parallel
* DMX

#### Keuze
Minimaal Ethernet

## Aanpasbaarheid
De shows moeten misschien worden aangepast, bv door het vervangen van een device.

#### Opties
* nvt

#### Keuze
De software om de shows aan te passen moet bij de koop inbegrepen zijn. Dit zorgt voor
een redelijke onafhankelijheidan de leverancier

## Backup
Dit gaat over het backuppen van de showcontroller en alle relevantie gegevens

#### Opties
* nvt

#### Keuze
Alle(!) instellingen van een show controller zouden via een backup gerestored moeten kunnen
orden. Bij voorkeur zijn de configuraties text based zodat er versie controle mogelijk is.

## Formfactor
Dit gaat over de fysieke eigenschappen van het apparaat

#### Opties
* 19 inch Rackmountable
* Desktop
* Ander formaat

#### Keuze
19 inch rackmountable zo dat het netjes kan worden opgehangen.

## Updates
Dit gaat over updates van de software

#### Opties
* nvt

#### Keuze
De software moet met enige regelmaat geupdated moeten worden. Ook zou de software met
toekomstige updates en versies van het OS moeten werken.

