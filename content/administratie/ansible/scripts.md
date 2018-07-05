---
title: "Scripts"
date: 2018-07-05T15:57:04+02:00
draft: true
weight: 20
---

## Inleiding

Naast de traditionele wijze van ansible gebruik met scriptjes die acties uitvoeren op meerdere
servers tegelijk. Willen we ook de mogelijkheid behouden om via Ansible Tower/AWX allerlei soorten
import of verwerkingsscripts af te trappen. 

### Import

Importeren van nieuwe assets. Leveranciers leveren lijsten met nieuwe componenten aan die door ons met een
python script worden uitgelezen en automatisch aan TopDesk kunnen worden toegevoegd.

### Conversie

Nieuwe en bestaande assets vormen de basis voor de hosts tabel van Ansible, maar ook voor chat kanalen 
of documentatie. Er zullen scripts komen die deze informatie gaan omzetten en aanmaken.

### Updates

Dit geldt ook voor updates of aanpassingen aan assets die geautomatiseerd in TopDesk worden ingeschoten.
In de api documentatie staat beschreven hoe dergelijke calls kunnen worden uitgevoerd vanuit python
scripts.

