# Showcontroller
Per zaal is er 1 show controller. De show controller stuurt het licht, geluid en andere effecten
aan die variabel zijn gedurende de dag, of variabel zijn als reactie op een actie.

## Specificaties types
* Input control
* Output control
* OS
* Poorten

### Input control
De showcontroller moet extern via ethernet bestuurd kunnen worden.

#### Opties
* REST API
* OSC
* Serial
* Telnet
* Een of ander ander protocol

#### Keuze
REST API. Dit is de IT standaard voor het aansturen van software. Het bied een logische strucktuur.


### Output
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

### OS
Omdat elk stuk software op een OS draait moet er een OS gekozen worden. Soms is het een all in one 
box en en is het OS al geintegreerd. Keuze van OS enigszinds van belang.

#### Opties
* Integraded
* Windows
* Linux
* Mac

#### Keuze
Linux of Integraded.

### Poorten
Er moet een aantal poorten zitten waarmee de showcontroller met kan sturen.

#### Opties
* Ethernet
* Serial
* Parallel
* DMX

#### Keuze
Minimaal Ethernet
