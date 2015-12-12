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
19ogyngri int,
20-21 int,
22-24 int,
25-29 int
);

create table leiguverd(
ibudir int,
timi int references fasteignaverd(timi),
kostnm2 int,
voxtur float
);
