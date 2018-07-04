---
title: "TopDesk API"
date: 2018-07-04T14:32:04+02:00
draft: true
weight: 20
---

## Inleiding

De API van TopDesk staat netjes beschreven in de 
[developer documentatie](https://developers.topdesk.com/index.html) van
TopDesk. Om de API te kunnen bedienen heb je een actieve TopDesk gebruikeraccount
nodig, die expliciet toegang heeft tot de API. De communicatie met de 
API verloopt via HTTP en de informatie die wordt gestuurd en ontvangen is 
(bijna) altijd in het json formaat.

### Inloggen

Het inloggen in de API moet via een Basic Auth authorisation call op endpoint:

[/tas/api/login/operator](https://developers.topdesk.com/documentation/index.html#api-Login-LoginAsOperator)

Hiervoor heb je een _username_ en een _password_ nodig. Het password mag ook 
een application password zijn, om te voorkomen dat er misbruik wordt gemaakt
van het operator password, maar ook om te voorkomen dat na een verandering 
van het hoofdwachtwoord de api scripts geen toegang meer hebben. 

```
import http.client

conn = http.client.HTTPSConnection("naturalis-test.topdesk.net")

headers = {
    'authorization': "Basic xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx=",
    'cache-control': "no-cache"
    }

conn.request("GET", "/tas/api/login/operator", headers=headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

Na de login call krijg je een token terug.

Het resultaat is iets zoals deze unieke token die bewaar moet worden:

```
bc91f965-b98b-4e0c-8dae-354013fbcbe7
```

Bij incorrecte credentials krijg je een 401, bij server probleem 500.


### Uitloggen

Afmelden van de TopDesk api gaat via deze endpoint:

[/tas/api/logout](https://developers.topdesk.com/documentation/index.html#api-Logout-Logout)

```
headers = {
    'authorization': "TOKEN id=\"bc91f965-b98b-4e0c-8dae-354013fbcbe7\"",
    'cache-control': "no-cache",
}

conn.request("GET", "/tas/api/logout", headers=headers)
```

### Lijsten van assets opvragen 

Via de [asset management module](https://developers.topdesk.com/explorer/?page=assets) kan je op vele verschillende manieren
lijsten met assets opvragen. Dit gaat via endpoint:

[/tas/api/assetmgmt/assets](https://developers.topdesk.com/explorer/?page=assets#/Assets/getAssets)

Je kan op vele manieren lijsten opvragen of filteren. De belangrijkste voor onze
wensen zijn waarschijnlijk via.

* (unieke) naam - parameter _nameFragment_
* template naam - parameter _templateName_
* behorende bij een parent - parameter _linkedTo_
* op status - parameter _assetStatus_

Maar er zijn nog vele andere manieren mogelijk. Het resultaat is een lijst 
met assets:

```
{
    "dataSet": [
        {
            "@etag": "2018-07-04T08:59:47.908         ",
            "id": "ee9f3a49-5dc7-4c85-b5c5-ff2bb2a98e82",
            "text": "lorem 1",
            "archived": false
        },
        {
            "@etag": "2018-07-04T10:08:17.530         ",
            "id": "4feea36d-d7f9-4570-9389-47360cae650f",
            "text": "lorem 3",
            "archived": false
        },
        {
            "@etag": "2018-07-02T11:09:12.414         ",
            "id": "f2b5fa22-7cdf-4b30-af26-be81b673e56d",
            "text": "sorteerspel-bs-001",
            "archived": false
        },
        {
            "@etag": "2018-07-02T13:14:47.334         ",
            "id": "cc623918-7c8a-455f-a7d1-cc2c9bb8b307",
            "text": "weidevogel-prj-001",
            "archived": false
        }
    ],
    "templates": []
}
```

Let op de id's deze zijn belangrijk en worden gebruik voor verdere 
afhandeling van acties op de assets of parents van assets.

### Asset gegevens opvragen

Om detail gegevens van een asset op te vragen kan je gebruik maken van de
unieke id en de HTTP-GET endpoint.

[/tas/api/assetmgmt/assets/{assetId}](https://developers.topdesk.com/explorer/?page=assets#/Assets/getAssetById)

Als de asset bestaat, dan krijg je een uitgebreid json antwoord met alles wat
met dat asset te maken heeft. Het belangrijkste onderdeel is het _data_ blok:

```
    "data": {
        "@etag": "2018-07-02T13:14:47.334         ",
        "unid": "cc623918-7c8a-455f-a7d1-cc2c9bb8b307",
        "component-type-1": "1c581d68-cfa7-439d-b90d-795a2cb9663c",
        "type_id": "A060D95A-B9D1-4A33-8E87-402BD8135ECC",
        "specification": "Weidevogel projector",
        "@@summary": "Weidevogel projector weidevogel-prj-001",
        "@statusLocked": true,
        "@status": "OPERATIONAL",
        "mac": "DEADBEEF",
        "archived": false,
        "modificationDate": "2018-07-02T13:14:47.333",
        "ipv4-address": "172.113.112.1",
        "name": "weidevogel-prj-001",
        "assettype": "805e3481-4f75-4bee-9975-b35467055ec0"
    },
```

### Asset gegevens overschrijven

Om een asset van nieuwe up-to-date gegevens te voorzien kan je gebruik maken
van dezelfde endpoint, maar dan via HTTP-POST. Stuur een raw json
body met waarden van de velden. Zo kan je bijvoorbeeld de specification
en het mac address van het bovenstaande voorbeeld veranderen.

```
payload = '{
    "specification" : "Lorem Ipsum",
    "mac" : "DE-AD-BE-EF-66"
}'

headers = {
    'authorization': "TOKEN id=\"be0f49ac-38d0-46ad-87aa-455ff6084a1a\"",
    'accept': "application/json",
    'content-type': "application/json",
    'cache-control': "no-cache",
    'postman-token': "8caefe9c-eea6-c798-d412-c4d2b6aa9e97"
    }

conn.request("POST", "/tas/api/assetmgmt/assets/cc623918-7c8a-455f-a7d1-cc2c9bb8b307", payload, headers)
```

Met een andere payload in de body kan je ook deze zelfde asset op 
_impacted_ zetten.

```
payload = '{
    "@status" : "impacted"
}'
```

### Asset aanmaken

Mocht een asset in de TopDesk administratie ontbreken en automatisch worden
aangemaakt. Dan is dit ook mogelijk. Dit kan via een HTTP Post op endpoint:

[/tas/api/assetmgmt/assets](https://developers.topdesk.com/explorer/?page=assets#/Assets/create1)

Opnieuw met een json body met tenminste alle velden die verplicht zijn.
Bijvoorbeeld:

```
{
    "type_id" : "A060D95A-B9D1-4A33-8E87-402BD8135ECC",
    "specification" : "Lorem Ipsum",
    "name" : "lorem 3",
    "ipv4-address" : "1.1.1.1",
    "mac" : "DE-AD-BE-EF",
    "component-type-1" : "",
    "assettype" : ""
}
```

Om erachter te komen welke velden er verplicht zijn en om te zien
welke template _type_id_ je moet gebruiken kan je een HTTP GET call doen
naar:

[/tas/api/assetmgmt/assets/blank](https://developers.topdesk.com/explorer/?page=assets#/Assets/getBlankAsset)

Met een _templateId_ of _templateName_ als parameter.

Alle beschikbare templates en hun Id's zijn op te vragen via:

[/tas/api/assetmgmt/templates](https://developers.topdesk.com/explorer/?page=assets#/Templates/getAll)


### Asset verwijderen

Een asset moet ook verwijderd kunnen worden. Eerst moet je via api calls
de unieke id zien te achterhalen. Waarna je via een HTTP POST op endpoint:

[/tas/api/assetmgmt/assets/delete](https://developers.topdesk.com/explorer/?page=assets#/Assets/delete1)

Een body met een of meerdere id's stuurt. Bijvoorbeeld:

```
{
  "unids": [
    "cc623918-7c8a-455f-a7d1-cc2c9bb8b307"
  ]
}
```

### Assets koppelen aan een groep of functionele eenheid

Naast het beheer van assets, kunnen componenten ook gekoppeld worden via
_links_ met een parent object, zoals een functionele eenheid. Hiervoor heb
je een _sourceId_, een _targetId_ en een relatie type nodig.

Dit kan via HTTP POST:

[/tas/api/assetmgmt/assetLinks](https://developers.topdesk.com/explorer/?page=assets#/Asset_links/link)

Met een json body zoals deze:

```
{
	"sourceId":"0a6f07c8-bd54-44a4-a6b2-502e43d41f95",
	"targetId":"4feea36d-d7f9-4570-9389-47360cae650f",
	"type":"child"
}
```

### Objecten opvragen die gekoppeld zijn

De child relaties van een object zijn dan op te te vragen via een HTTP-GET:

[/tas/api/assetmgmt/assetLinks](https://developers.topdesk.com/explorer/?page=assets#/Asset_links/getLinkedAssets)

Met _sourceId_ als parameter. Dit geef een lijst me alle kinderen van dat object.


### Relaties verbreken

De relatie is ook weer te verwijderen via een HTTP-DEL op:

[/tas/api/assetmgmt/assetLinks/{sourceId}](https://developers.topdesk.com/explorer/?page=assets#/Asset_links/unlink)


### Andere acties

Deze lijst is niet uitputtend. Er zijn naast asset management nog vele manieren
om informatie in TopDesk te schieten of eruit te halen. We moeten per
user story kijken in hoeverre we hiervan gebruik gaan of willen maken. Een
interessante functie is bijvoorbeeld de incident rapportage.

[/tas/api/incidents?object_id={objectId}](https://developers.topdesk.com/documentation/index.html#api-Incident-CreateIncident)


