create database gagnasafn;
\c gagnasafn

create table fasteignaverd(
ibudir int,
timi int,
kostnm2 int,
primary key(timi)
);

create table mannfjoldaspa(
timi int,
spa int,
);

create table erlendirferda (
fjoldi int,
timi int,
);

create table mannfjoldi(
timi int,
mannfjoldi int
);

create table haskolanam(
fjoldi int,
timi int
);

create table utskrifadirhaskola(
timi int,
yngri int,
aldur20til21ara int,
aldur22til24ara int,
aldur25til29 int
);



create table laun(
timi int,
regluleglaun int
);

create table ibudirfullgerdar(
timi int,
fjoldi int
);




create table leiguverd(
timi int,
studiomedalverd int,
herb2medalverd int,
herb3medalverd int,
herb4medalverd int,
herb5medalverd int,
herb6medalverd int,
studiossamning int,
herb2samning int,
herb3samning int,
herb4samning int,
herb5samning int,
herb6samning int
);