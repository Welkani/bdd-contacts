drop database if exists exo_contacts;
create database exo_contacts;

use exo_contacts;


create table contacts(
    id int primary key auto_increment,
    nom varchar(70),
    pays varchar(70),
    date_de_naissance DATE,
    sexe varchar(10),
    adresse text,
    cp varchar(10),
    ville varchar(70),
    pays_iso_3 varchar(3),
    
);















