# API La Chopine Du Coin

## FR :fr:

REST API pour la chopine du coin.
Donn�e sur base Postgresql externe.

### Fonctionnalit�s :floppy_disk:


### Installation :raised_hands:

```console
git clone https://github.com/Vulcainos/ChopineApi.git
```

Cr�e .\src\main\resources\application.properties avec les acc�es � la bdd (exemple disponible).

```console
mvn spring-boot:run
```

### Documentation :open_file_folder:

#### Event 
-------------------

| Type     | Field        | Description  |
|----------|--------------|--------------|
| Integer  | idEvent      |              |
| String   | name         |              |
| String   | description  |              |
| String   | place        |              |
| Date     | date         |              |
| Integer  | creator      |              |
| boolean  | enabled      |              |


 > GET /event/all
 > 
 > Retourne la liste des events pr�sent dans la base.
 
 > GET /event/futur
 > 
 > Retourne la liste des events futur pr�sent dans la base.
 
 > PUT /event
 > 
 > Ajoute un event � la base.
 > 
 > Exemple de JSON dans le body `{
    "name": "La Chopine du B148",
    "description": "La soir�e de folie au b148",
    "place": "B148 - The place to beer",
    "date": "2023-06-06 12:29:29",
    "creator": 1
}`
 
 > DELETE /event
 > 
 > Supprime un pokemon de la base, seulement si il est d�sactiv�. 
 >
 > Exemple de JSON dans le body `{
    "id": "1"
}`
