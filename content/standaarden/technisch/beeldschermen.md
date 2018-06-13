---
title: "Beeldschermen"
date: 2018-05-23T14:33:17+02:00
draft: false
---

Beeldschermen, ook wel monitoren genoemd, zijn er in vele soorten en maten voor
verschillende doeleinden. De onderstaande eisen gelden voor alle type
beeldschermen met uitzondering van de specifieke eisen de we stellen aan
touchscreens, deze worden elders nader bepaald.

## Technische eisen

* Merk: goed leverbaar & standaardisering waar mogelijk
* Video-in: HDMI 2.0 of hoger (type A connector)
* Bediening: ondersteuning in volgorde van voorkeur:
  1. CEC over HDMI
  1. CEC over UTP (HDBaseT)
  1. UDP over UTP
  1. RS232C
* Smart: Nee
* Afscherming: beeldschermen die door bezoekers aangeraakt kunnen worden dienen
  van een glasplaat zijn te voorzien.

{{%expand "Toelichting technische eisen" %}}

## Toelichting technische eisen

Hieronder worden de technische eisen toegelicht.

### Merk

Het merk maakt niet uit zolang deze maar goed en lang leverbaar is. Ook heeft
het standaardiseren wat betreft merk de voorkeur.

### Video-in

#### Opties

* DisplayPort
* DVI-D
* HDMI
* Mini DisplayPort
* USB 3.0 (video)
* VGA (D-Sub)
* Component Video
* Composite
* DVI-I
* HDMI micro
* Mini-VGA
* S-Video
* Scart
* Thunderbolt 2
* Thunderbolt 3
* USB 2.0 (video)
* USB 3.1 (Gen1, 5Gb/s)
* USB 3.1 (Gen1, type-c, 5Gb/s)
* USB 3.1 (Gen2, type-c, 10Gb/s)
* Wireless Display (WiDi)

#### Keuze

HDMI 2.0 of hoger (type A connector), zie [Technische eisen
videokabels](https://docs.google.com/document/d/1ba3zL2Yn2mWnu49btuHtLRKmO4S7_GJs8KcNHbRhkkM/edit##heading=h.pael25ez7hg)
voor argumentatie.

### Bediening

Beeldschermen hebben verschillende instellingen, denk hierbij aan Input Source,
Brightness, Contrast, Color Settings, Display Settings, Energy Settings. De
standaard manier van instellen is in de meeste gevallen een on-screen display
dat met fysieke knoppen bedient wordt. Naast dat de gebruiksvriendelijkheid vaak
te wensen overlaat zijn de knoppen na het inbouwen of ophangen niet meer goed
toegankelijk. Daarom is er de wens de instellingen ook zonder fysieke toegang te
kunnen wijzigen. Bijkomstig is er de wens de instellingen te kunnen opslaan en
reproduceren in het geval van onbedoelde wijzigingen of na het vervangen van de
hardware.

#### Opties

* RS232C over infrarood (klassieke afstandbediening)
* RS232C (stereo jack)
* RS232C (Mini D-Sub 9-pins)
* CEC* over HDMI
* CEC HDBaseT (UTP)

*CEC is onder de volgende namen bekend:

* Anynet+ (Samsung)
* Aquos Link (Sharp)
* BRAVIA Link, BRAVIA Sync, Control for HDMI (Sony)
* CE-Link, Regza Link (Toshiba)
* E-link (AOC)
* EasyLink (Philips)
* Fun-Link (Funai, Sylvania, Emerson, Magnavox, Philips)
* HDMI-CEC (Hitachi)
* INlink (Insignia)
* Kuro Link (Pioneer)
* NetCommand for HDMI, Realink for HDMI (Mitsubishi)
* RIHD (Remote Interactive over HDMI) (Onkyo)
* RuncoLink (Runco International)
* SimpLink (LG)
* T-Link (ITT)
* VIERA Link, HDAVI Control, EZ-Sync (Panasonic)
* CEC (Vizio)

#### Keuze

De klassieke afstandsbediening is niet geschikt omdat de infrarood poort in veel
gevallen ook niet meer toegankelijk is, wanneer schermen naast elkaar hangen de
bediening elkaar kan storen en het signaal niet beveiligd is.

De standaard die we willen hanteren is Consumer Electronics Control (CEC). CEC
is mogelijk over HDMI of UTP middels HDBaseT dat o.a. HDMI en CEC over UTP
implementeert.

Voor beeldschermen die geen CEC ondersteunen maar wel via het netwerk door
middel van UDP kunnen worden aangestuurd. Hoewel niet ideaal
kan dit in gevallen acceptabel zijn.

Een laatste optie is RS232C over koper, al dan niet via Mini D-Sub 9-pins of
stereo jack. Deze methode heeft als nadeel dat de "player" moet zijn voorzien
van een Mini D-Sub 9-pins com-port of IR stereo uitgang. Tegelijkertijd is deze
methode wel breed beschikbaar en kan dus in gevallen acceptabel zijn.

Wij hanteren daarom de onderstaande volgorde van voorkeur betreffende de
standaard:

1. CEC over HDMI
1. CEC over UTP (HDBaseT)
1. UDP over UTP
1. RS232C

### Smart

Er zijn sinds een aantal jaar zogeheten Smart TV’s op de markt. Het gaat hierbij
om een in het beeldscherm geïntegreerde (embedded) computer waarop vaak
fabrikant-specifieke besturingssystemen (zoals WebOS, Tyzen of Android) en
bijbehorende software draait. De vraag is of met het oog op beheer dergelijke
soft- en hardware gewenst is.

#### Opties

* Beeldschermen met Smart TV functionaliteit
* Beeldschermen zonder Smart TV functionaliteit

#### Keuze

Beeldschermen met volwaardige Smart TV functionaliteit zijn niet toegestaan. Op deze
regel mag uitsluitend een uitzondering worden gemaakt wanneer er op basis van
specifieke functionele wensen alleen beeldschermen in aanmerking komen die ook Smart
TV functionaliteit hebben.

De reden voor het niet toestaan van dit type beeldschermen is in de eerste plaats
dat smart TV's geen functionaliteit toevoegen waarin niet (goed onderhoudbaar en
kwalitatief beter) middels een player kan worden voorzien. Bovendien wijst de
praktijk uit dat de veiligheid van de software van Smart TV’s te wensen
overlaat, en dat security updates lang op zich laten wachten. De
onderhoudbaarheid wordt daarnaast ook beperkt doordat de configuratie van Smart
TV’s niet of lastig is te automatiseren.

### Afscherming

Met de komst van touchscreens gaan bezoekers van musea er vaak vanuit dat elk
scherm dat ze zien ook een touchscreen is. Beeldschermen zonder touch zijn vaak
niet berekend op het veelvuldig aanraken en kunnen daardoor beschadigd raken.

#### Opties

* Alle beeldschermen worden als touchscreen uitgevoerd.
* Alle beeldschermen worden met een glasplaat uitgevoerd.
* Alle beeldschermen die aangeraakt kunnen worden door bezoekers worden met een
  glasplaat uitgevoerd.

#### Keuze

Vanwege kostenoverwegingen wordt als minimale eis gesteld dat alle beeldschermen
die aangeraakt kunnen worden door bezoekers van een glasplaat moet zijn
voorzien.
{{% /expand%}}
