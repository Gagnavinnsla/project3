create table mannfjoldispa(

);

create table fasteignaverd(
ibudir
timi
kostnm2
primary key(timi)
);

create table erlendirferda (
fjoldi
voxtur
timi references fasteignaverd(timi)
);

create table mannfjoldi(
timi references fasteignaverd(timi)
mannfjoldi 1.jan
);

create table leiguverd(
ibudir
timi references fasteignaverd(timi)
kostnm2
voxtur
);

create table ungt folk(
fjoldi
voxtur
timi references fasteignaverd(timi)
);

create table haskolanam(
laun
kostnadur
voxtur
timi references fasteignaverd(timi)
);
