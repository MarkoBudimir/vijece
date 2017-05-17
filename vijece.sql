drop database if exists vijece;
create database vijece default character set utf8;
use vijece;

create table clan(
id				int not null primary key auto_increment,
titula			varchar(50) not null,
ime				varchar(50) not null,
prezime			varchar(50) not null,
mail			varchar(50) not null,
broj_mob		varchar(50)	not null,
slika			varchar(50) not null,
lozinka			varchar(50) not null,
br_clanova		int(50) not null,
kvorum 			int(50) not null,
prisutan		varchar(50) not null,
lista			int not null,
sjednica		int not null,
glasovanje		int not null
);

create table lista(
id				int not null primary key auto_increment,
naziv			varchar(255) not null
);

create table sjednica(
id					int not null primary key auto_increment,
naziv				varchar(250) not null,
vrijeme_pocetka		datetime not null,
vrijeme_zavrsetka	datetime not null,
datum				datetime not null,
video_link			varchar(250) not null
);

create table glasovanje(
id				int not null primary key auto_increment,
glas			varchar(50) not null,
zakljuceno		datetime not null,
materijal		int not null 
);

create table materijal(
id				int not null primary key auto_increment,
naziv			varchar(250) not null,
dokument		varchar(250) not null
);




alter table clan add foreign key (lista) references lista (id);
alter table clan add foreign key (sjednica) references sjednica (id);
alter table clan add foreign key (glasovanje) references glasovanje (id);
alter table glasovanje add foreign key (materijal) references materijal (id);



