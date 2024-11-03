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
);
-- cretation of a composite index which enhanced the speed of the query.
-- user .timer on to acknowledge the differences
EXPLAIN QUERY PLAN -- to check how the motor think to use the tool we give to it.
CREATE INDEX idx_magasins ON `Magasins` ('Pays', 'Ville', 'CodePostal') ;