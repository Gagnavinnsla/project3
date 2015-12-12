create table fasteignaverd(
ibudir int,
timi int,
kostnm2 int,
primary key(timi)
);

create table mannfjoldispa(
timi int references fasteignaverd(timi),
spa int
);

create table erlendirferda (
fjoldi int,
voxtur int,
timi int references fasteignaverd(timi)
);

create table mannfjoldi(
timi int references fasteignaverd(timi),
mannfjoldi int
);

create table haskolanam(
fjoldi int,
timi int references fasteignaverd(timi)
);

create table utskrifadirhaskola(
timi int references fasteignaverd(timi),
yngri int,
aldur20til21ara int,
aldur22til24ara int,
aldur25til29 int
);

create table leiguverd(
timi int references fasteignaverd(timi),
studiomedalverd int,
herb2medalverd int,
herb3medalverd int,
herb4medalverd int,
herb5medalverd int,
herb6medalverd int,
studiostaerd int,
herb2steard int,
herb3steard int,
herb4steard int,
herb5steard int,
herb6steard int,
studiossamning int,
herb2samning int,
herb3samning int,
herb4samning int,
herb5samning int,
herb6samning int
);
