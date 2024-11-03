1.sql : Une entreprise dispose d'un registre contenant la liste des employés, définie par l'instruction suivante :
```sql
CREATE TABLE Employes
(
    Nom varchar(250),
    Prenom varchar(250),
    Ville varchar(250),
    CodePostal varchar(5),
    Telephone varchar(20)
)
```

## 2.sql : Une entreprise dispose d'une liste de magasins, définie par l'instruction suivante :
```sql
CREATE TABLE Magasins
(
    Id int not null primary key auto_increment,
    CodeMagasin varchar(20),
    Nom varchar(250),
    Adresse varchar(250),
    Ville varchar(250),
    CodePostal varchar(5),
    Pays varchar(250),
    Telephone varchar(20)
)
```

# Defi
---
## defi1.sql
Une chaîne de magasins veut créer une base de données pour gérer son stock de produits.
Il y a plusieurs magasins, qui sont identifiés par leur code postal (il n'y a qu'un seul magasin par secteur). Ils ont également un nom et une adresse.
Un produit est défini par son code (un numéro à 10 chiffres), son libellé et sa description.
Les responsables veulent pouvoir connaître le stock d'un magasin pour chaque produit, donc la quantité de produits disponibles dans chaque magasin.

---


# Querying sql database
---
## 3.sql a shop has a table to sell described such as this  :
```sql
CREATE TABLE Ventes
(
    Id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NomVendeur varchar(50) NOT NULL,
    MontantVente decimal(10,2) DEFAULT 0,
    DateVente datetime DEFAULT NOW()
);
```

- Écrivez une requête permettant de connaître le montant de toutes les ventes du vendeur Dupond.

- Écrivez une autre requête permettant de connaître le nombre de ventes du vendeur Dupond

## 4.sql Un magasin dispose d'une table de ventes décrite comme suit 
```sql
CREATE TABLE Ventes
(
    Id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NomVendeur varchar(50) NOT NULL,
    MontantVente decimal(10,2) DEFAULT 0,
    DateVente datetime DEFAULT NOW()
)
;
```
- Write a request to encounter the name of the saler and the sum of their sales.

## 5.sql DATABASE SQL

```sql
(
    Id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NomVendeur varchar(50) NOT NULL,
    MontantVente decimal(10,2) DEFAULT 0,
    DateVente datetime DEFAULT NOW()
)
;
```
## Defi
### question
Une chaîne de magasins souhaite pouvoir analyser les secteurs géographiques les plus pertinents pour ses futures implémentations. Pour cela, elle souhaiterait un classement des villes dont les magasins génèrent le plus de chiffre d'affaires, accessible depuis une page de son intranet. Pour des raisons d'affichage, au vu du grand nombre de magasins, l'affichage sera limité à 10 magasins par page.

```sql
CREATE TABLE Magasins
(
    Id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nom varchar(50) NOT NULL,
    Ville varchar(100) NOT NULL,
    ChiffreAffaire decimal(10,2) DEFAULT 0
)
;
```
- Écrivez la requête SELECT permettant de renvoyer la liste des villes, le cumul de tous les chiffres des magasins implémentés dans cette ville et leur rang dans le classement. 
    - Cette requête ne devra retourner que les magasins qui devront apparaître sur la première page.

- La chaîne souhaiterait également comparer le CA de chaque magasin au meilleur magasin de la même ville. Écrivez une requête permettant de retourner le nom, la ville et le chiffre d'affaires de tous les magasins, ainsi que le chiffre d'affaires le plus haut de cette ville. Le résultat devra être trié par ville.