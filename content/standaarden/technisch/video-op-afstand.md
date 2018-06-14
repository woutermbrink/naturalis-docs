---
title: "Video op afstand"
date: 2018-05-23T14:34:51+02:00
draft: false
weight: 80
---

Onze standaard voor video overdracht van een "player" naar een projector of
monitor is HDMI. Standaard worden players dicht bij projectoren en monitoren
aangebracht.

In uitzonderlijke situaties kan het echter de voorkeur hebben of noodzakelijk
zijn om de "player" te plaatsen op een locatie waarvoor een kabellengte van meer
dan de maximaal door HDMI ondersteunde afstand van 15 meter nodig is. In deze
gevallen moet er gebruikt gaan worden van een alternatief voor een HDMI kabel.
Ter verduidelijking, het gaat hier over een alternatief voor de kabel en niet
over HDMI als High-Definition Multimedia Interface.

## Technische eisen

* Video transmissie: HDBaseT (klasse A of C)
* Extender hardware: aparte hardware met HDMI 2.0 (type A) ingang en rackmountable
* Receiver hardware: *native* ondersteuning op projectoren
* Control signal: minimaal CEC compliant

{{%expand "Toelichting technische eisen" %}}

## Toelichting technische eisen

Hieronder worden de technische eisen toegelicht.

### Video transmissie

Er zijn verschillende video transmissie methodes: manier waarop videosignaal
over afstand wordt getransporteerd.

#### Opties

* Actieve HDMI kabels: tot 30m
* HDBaseT over twisted pair: tot 100m (op basis van één ‘hop’, en grotere
  afstanden met meer hops.)
* HDBaseT over glasvezel: tot een paar kilometer
* HDMI extenders (Cat5 / Cat6): tot 250m
* HDMI extenders (optische kabel): tot 300m

#### Keuze

De situaties bij Naturalis waarbij de player op grote afstand (> 15 meter) zou
kunnen komen te staan zijn van de projector of monitor zijn met die situaties
waarbij er projectoren op moeilijk bereikbare plekken (lees: grote hoogte) komen
te hangen. Deze projectoren hangen op hoogten tussen de 6 en 9 meter. Het
kabeltracé van deze projectoren tot de technische ruimte zal niet groter zijn
dan 100 meter (in de Dino-zaal is de langste theoretische afstand van projector
naar SER niet langer dan 60 meter).

Tegelijkertijd heeft HDBaseT zich de afgelopen jaren ontwikkeld tot de
wereldwijde standaard op het vlak van videotransport over langere afstanden. Dit
uit zich bijvoorbeeld in een relatief groot aanbod van projectoren met *native*
ondersteuning voor HDBaseT. De standaard is bovendien volop in ontwikkeling. Zo
wordt er momenteel onder de IEEE vlag gewerkt HDBaseT aan het uitbreiden van het
aantal typen kabels waarover HDBaseT kan worden getransporteerd.

Er bestaan in totaal [vijf HDBaseT
klassen](https://hdbaset.org/faqs/what-is-the-difference-among-the-different-classes-of-hdbaset/).
Daarbij voldoen klasse A en B aan HDBaseT Spec 1.0 en klassen C, D en E aan Spec
2.0 (die in 2013 werd gepubliceerd). Spec 2.0 ondersteunt de volledige
functionaliteit van Spec 1.0 maar voegt met name ten aanzien van
netwerkondersteuning de nodige functionaliteit toe. Daarnaast is ook USB 2.0
ondersteuning toegevoegd.

Van de vijf klassen zijn klasse B en klasse D ongeschikt vanwege de beperkte
afstand (respectievelijk 70 en 30 meter) en in mindere mate (in het geval van
klasse D) kwaliteit (tot en met 1080p) die wordt ondersteund. Klasse B
ondersteunt geen Ethernet functionaliteit.

Klasse E HDBaseT is daarnaast ongeschikt vanwege het feit dat hierbij
glasvezelkabel in plaats van *twisted pair* kabel wordt gebruikt. Dat is
simpelweg niet beschikbaar / geen kostenefficiënte oplossing.

Voor een afweging tussen klasse A en de 2.0 equivalent klasse C is het van
belang of de extra netwerkfunctionaliteit opweegt tegen de beperkte
beschikbaarheid van hardware die voldoet aan die klasse. Dit laatste is een
serieus punt van aandacht aangezien er nog bijzonder weinig hardware met klasse
C op de markt is. Om die reden zijn beide klassen toegestaan, maar is het wel
gewenst om zoveel mogelijk te standaardiseren op één klasse.

In gevallen waarbij het vanwege lastige bereikbaarheid van projectoren
noodzakelijk wordt geacht om de player op afstand te plaatsen wordt HDBaseT
klasse A of C voor video transport gebruikt.

### Extender hardware

Voor het overbrengen van het videosignaal door middel van HDBaseT is zowel een
sender / extender als een receiver nodig. De eisen die worden gesteld aan de
sender / extender worden hier besproken.

#### Opties

* Per player aparte extender modules
* Native ondersteuning players
* Per groep players een HDBaseT switch

#### Keuze

Er is professionele hardware op de markt die native ondersteuning biedt voor
HDBaseT. Zo biedt advoli sinds kort een grafische kaart waarmee native zes
HDBaseT receivers van signaal kunnen worden voorzien. Deze hardware is momenteel
slechts als Pre-order beschikbaar. Voor het overige is de hoeveelheid hardware
met native ondersteuning zeer beperkt. Om die reden is het niet verstandig om
van native ondersteuning uit te gaan of als eis te stellen.

Bij de twee andere opties is sprake van hardware die input ontvangt vanuit de
player en deze over de twisted pair kabel verstuurd naar de receiver hardware.
De aparte extender modules zijn daarbij over het algemeen gericht op het van
doorsturen van het signaal van één player naar één (of soms twee) receivers
terwijl de switche(r)s (soms ook matrix genoemd) signalen van meerdere players
naar meerdere receivers kunnen doorzetten, waarbij vaak ook geschakeld kan
worden.

Bij het bepalen van de juiste hardware zijn met name twee zaken van belang. Ten
eerste gaat het om de gewenste functionaliteit. De opstellingen waarbij video op
afstand mogelijk gewenst is betreft steeds een opstelling met één player
gekoppeld aan één projector. Het kunnen switchen tussen players is dus niet
nodig. Een tweede factor is de plaatsing van de players. Aangezien het voor de
hand ligt om voor de HDBaseT verbinding gebruik te maken van de twisted pair
kabels die in het gebouw zijn aangebracht. Deze eindigen in de patchkasten in de
SER van de betreffende tentoonstelling. Het ligt daarom voor de hand om daar ook
de players en de extenders te plaatsen. Het heeft daarom de voorkeur wanneer de
extenders rack mountable zijn.

Voor het versturen van HDBaseT signaal wordt aparte extender hardware gebruikt
die bij voorkeur rack mountable is. In aansluiting op de standaard voor
videokabels hebben de extenders een HDMI 2.0 type A ingang.

### Receiver hardware

Voor het overbrengen van het videosignaal door middel van HDBaseT is zowel een
sender / extender als een receiver nodig. De eisen die worden gesteld aan de
receiver worden hier besproken.

#### Opties

* Aparte receiver modules
* Native ondersteuning projectoren

#### Keuze

De reden om te kiezen voor het op afstand plaatsen van players is de lastige
bereikbaarheid, en bijkomende beheerlast, van een deel van de projectoren. Hoe
minder hardware op een lastig bereikbare plek hangt, hoe sneller
(hardware)problemen verholpen kunnen worden.

Een deel van dit voordeel kan (in theorie) teniet worden gedaan door de inzet
van aparte receiver modules op korte afstand van de projectoren. Anderzijds zijn
er voldoende kwalitatieve projectoren met *native *ondersteuning voor HDBaseT.

Om die reden wordt bij het toepassen van video op afstand in de
tentoonstellingen alleen gewerkt met projectoren die *native* HDBaseT
ondersteuning bieden.

### Control signals

Bij het op afstand versturen van het videosignaal blijft het kunnen aansturen
van de projectoren van belang.

#### Opties

* RS232
* IR
* CEC
* Telnet
* Web interface
* PJLink

#### Keuze

De keuze voor HDMI 2.0 als standaard voor video kabels op korte afstand was mede
ingegeven door de uitgebreide ondersteuning voor Consumer Electronics Control
(CEC). Op basis hiervan kan hardware op afstand (bijv. door de player) worden
gecontroleerd waardoor eenvoudige acties als het aan- en uitzetten van
projectoren en soms ook uitgebreidere acties als het activeren van een input
poort kunnen worden geregeld.

HDBaseT ondersteunt standaard de eerste drie genoemde opties. Voor de aansturing
/ het inregelen van projectoren door middel van de overige protocollen is een
netwerkverbinding nodig. HDBaseT apparatuur die voldoet aan Spec 1.0 of Spec 2.0
bieden ondersteuning voor Ethernet verbindingen over dezelfde kabel. Aangezien
CEC als standaard geldt voor reguliere videokabel hanteren we dit ook als
uitgangspunt bij video op afstand.

Alle HDBaseT apparatuur is CEC compliant.

{{% /expand%}}
