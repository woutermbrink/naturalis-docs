# show controller

## Omschrijving

Per tentoonstelling of experience is er één show controller. De show controller
stuurt (vaak via een dedicated lichtcontroller) het licht, geluid en andere
effecten aan die variabel zijn gedurende de dag, of variabel zijn als reactie op
een actie.

## Technische eisen

1. [Input control](#input-control)
2. [Output control](#output-control)
3. [OS](#os)
4. [Poorten](#poorten)
5. [Aanpasbaarheid](#aanpasbaarheid)
6. [Backup](#backup)
7. [Formfactor](#formfactor)
8. [Updates](#updates)

## Input control

De show controller moet extern via Ethernet bestuurd kunnen worden.

### Opties

* REST API
* OSC
* Serial
* Telnet
* Een of ander ander protocol

### Keuze

show controllers zijn aan te sturen via een REST API. Dit is de IT standaard
voor het aansturen van software. Het biedt een logische structuur. De REST API
moet in ieder geval de volgende functies ondersteunen:

* Uitlezen van lijst van shows
* Welke show op dit moment in werking is
* Starten/stoppen van een show

## Output control

In het museum is sprake van een grote diversiteit aan devices waarvan een groot
deel moet worden aangestuurd door show controllers. De ondersteuning van veel
output protocollen is daarom gewenst.

### Opties

* REST
* OSC
* Serial
* Telnet
* DMX
* Nog heel veel

### Keuze

show controllers ondersteunen minimaal het aansturen van REST API's.

## OS

Omdat elk stuk software op een OS draait moet er een OS gekozen worden. Soms
worden show controllers als all-in-one-box geleverd en is het OS al
geïntegreerd. Keuze van OS enigzins van belang.

### Opties

* Integrated
* Windows
* Linux
* Mac

### Keuze

show controllers draaien op Linux of draaien op basis van een all-in-one
oplossing met integrated besturingssysteem.

## Poorten

Er moet een aantal poorten zitten waarmee de show controller met kan sturen.

### Opties

* Ethernet
* Serial
* Parallel
* DMX

### Keuze

show controllers hebben minimaal een Ethernet poort voor communicatie over het
datanetwerk.

## Aanpasbaarheid

De shows moeten misschien worden aangepast, bijvoorbeeld wanneer een component
in de tentoonstelling vervangen moet worden.

### Opties

* nvt

### Keuze

De software om de shows aan te passen moet bij de koop inbegrepen zijn. Dit
zorgt voor een redelijke onafhankelijheid van de leverancier.

## Backup

Dit gaat over het backuppen van de show controller en alle relevante gegevens.

### Opties

* nvt

### Keuze

Alle (!) instellingen van een show controller moeten via een backup gerestored
kunnen worden. Bij voorkeur zijn de configuraties text based zodat er versie
controle op basis van [Git](https://git-scm.com/) mogelijk is.

## Formfactor

Dit gaat over de fysieke eigenschappen van het apparaat.

### Opties

* 19 inch rackmountable
* Desktop
* Ander formaat

### Keuze

Show controllers zijn 19 inch rackmountable zodat ze in een gecontroleerde
technische ruimte opgehangen kunnen worden.

## Updates

Dit gaat over updates van de software.

### Opties

* nvt

### Keuze

De software moet met enige regelmaat geupdated kunnen worden. Daarnaast dient de
software te blijven werken in het geval van updates van het OS.
