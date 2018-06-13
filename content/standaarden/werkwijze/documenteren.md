---
title: "Documenteren"
date: 2018-06-13T11:47:15+02:00
draft: true
---

## Aanleveren asset informatie

Bij de aanlevering en registratie van asset informatie wordt de volgende
werkwijze gehanteerd:

1. Het technisch team van Naturalis levert een spreadsheet aan met voor elke
   soort component een tabblad met alle [relevante velden]({{< relref
   "asset-informatie.md" >}}).
1. De AV installateur voegt per asset alle relevante informatie toe aan de
   spreadsheet. Idealiter wordt ook de naam van de asset al in deze stap
   aangeleverd.
1. Het technisch team verwerkt de asset informatie (excl. naam) in het asset
   management systeem.
1. Het technisch team voegt per asset op basis van de naam een host toe, en
   voert het ID en het MAC-adres toe aan de host-variabelen in Ansible. Op basis
   hiervan kunnen ondermeer IP-adressen worden toegewezen en software worden
   geïnstalleerd.
1. Het technisch team maak voor alle specifieke componenten pagina's in de
   documentatie aan.
1. De AV installateur vult ten slotte de documentatiepagina van elk type
   component conform de [standaard component documentatie]({{< relref
   "component.md" >}}) aan.
