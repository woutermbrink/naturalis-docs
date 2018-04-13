# Server Architectuur - FEM-32

### Kader
Dit Document beschrijft de oplossing van *userstory* FEM32:

> Als systeembeheerder heb ik een detail design nodig van de server architectuur (hosten + deployment van fysieke systemen) zodat ik hardware kan selecteren.
> Acceptatie criteria:
> * Servers moeten bereikbaar blijven ook wanneer de netwerkverbinding tussen Darwinweg en de rest van de wereld wegvalt.
> * De hardware moet geschikt zijn voor de technieken die ook elders door ICT voor het hosten van servers gebruikt worden (lees: Kubernetes)

## Oplossing
De accepatie creteria zijn wat aangepast. Er is een inschatting gemaakt van het risico dat de netwerkverbinding tussen Darwinweg en Outside 
wegvalt. De kans hierop is heel erg klein. Het hosten van server hardware op Darwinweg brengt ook risico met zich mee. Onze inschatting is dat
het uitvallen van een lokaal cluster een groter risico is dan het wegvallen van de netwerkverbinding.

Dit betekend dat we bijna alle services nodig voor het museum in het datacenter zullen draaien. Daar draait al een kubernetes cluster en daar kunnen we
services op draaien die nodig zijn. Er is misschien uitbreiding nodig voor dat cluster. Verder zal er fisieke server draaien in Darwinweg. Deze server heeft 
twee taken
* Deployment van museum devices
* DHCP Service
* DNS Service
* Bastion node voor het uitvoeren van taken vanaf Ansible Tower.

Er zal dus een service op draaien die de deployment van museum devices doet. Deze servies is niet kritiek, hij mag dus uitvallen. 
De bastion node, DHCP en DNS rollen zijn wel kritiek. Het is dus verstandig om twee servers te kopen. 
Eventuele andere services die nodig zijn kunnen in docker container draaien, deze worden dan gemanaged
via *docker-compose*.

Mocht er in de toekomst nog blijken dat er nog meer lokale services nodig zijn dan kunnen die toegevoegd worden aan de lokale server.

De lokale server heeft geen zware systeem eisen. De minimale eisen zijn:
* Intel Xeon E3
* 32GB RAM
* Dual NIC
* 256GB storage
* Rack mountable



