# Server Architectuur - FEM-32

## Kader
Dit document beschrijft de oplossing van *userstory* FEM32:

> Als systeembeheerder heb ik een detail design nodig van de server architectuur
> (hosten + deployment van fysieke systemen) zodat ik hardware kan selecteren.
> Acceptatie criteria:
> * Servers moeten bereikbaar blijven ook wanneer de netwerkverbinding tussen
>   Darwinweg en de rest van de wereld wegvalt.
> * De hardware moet geschikt zijn voor de technieken die ook elders door ICT
>   voor het hosten van servers gebruikt worden (lees: Kubernetes)

## Oplossing

De accepatiecriteria zijn wat aangepast. Er is een inschatting gemaakt van het
risico dat de netwerkverbinding tussen Darwinweg en Outside wegvalt. De kans
hierop wordt als heel minimaal ingeschat. Het hosten van server hardware op de
Darwinweg brengt ook risico met zich mee. Onze inschatting is dat het uitvallen
van een lokaal cluster een groter risico is dan het wegvallen van de
netwerkverbinding.

Dit betekent dat we bijna alle services nodig voor het museum in het datacenter
zullen draaien. Daar draait al een kubernetes cluster dat we kunnen gebruiken
voor het draaien van de benodigde services. Mogelijk is er wel uitbreiding nodig
voor dat cluster. In aanvulling op het Kubernetes cluster zal er een fysieke
server draaien op locatie in de Darwinweg. Deze server vervult een aantal taken:

* Deployment van museum devices
* DHCP Service
* DNS Service
* Bastion node voor het uitvoeren van taken vanaf Ansible Tower

Er zal dus een service op draaien die de deployment van museum devices doet.
Deze service is niet kritiek aangezien er voor het functioneren van het museum
niet constant deployments nodig zij. Met andere woorden: hij mag dus uitvallen.
De bastion node, DHCP en DNS rollen zijn wel kritiek. Het is dus verstandig om
twee servers te kopen. Eventuele andere services die nodig zijn kunnen in docker
containers draaien, deze worden dan gemanaged via *docker-compose*.

Mocht er in de toekomst blijken dat er nog meer lokale services nodig zijn
dan kunnen die toegevoegd worden aan de lokale server.

De lokale server heeft geen zware systeem eisen. De minimale eisen zijn:
* Intel Xeon E3
* 32GB RAM
* Dual NIC
* 256GB storage
* Rack mountable
