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

create table leiguverd(
ibudir int,
timi int references fasteignaverd(timi),
kostnm2 int,
voxtur float
);

create table ungtfolk(
fjoldi int
voxtur float 
timi int references fasteignaverd(timi)
);

create table haskolanam(
laun int ,
kostnadur int,
voxtur int ,
timi int references fasteignaverd(timi)
);

