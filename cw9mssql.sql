create database TabelaStratygraficzna;

use TabelaStratygraficzna;

create schema Geologia;

create table Geologia.GeoEon(id_eon int primary key,nazwa_eon varchar(30));

create table Geologia.GeoEra( id_era int primary key, nazwa_era varchar(30),
		id_eon int foreign key references Geologia.GeoEon(id_eon));

create table Geologia.GeoOkres(id_okres int primary key, nazwa_okres varchar(30),
		id_era int foreign key references Geologia.GeoEra(id_era))

create table Geologia.GeoEpoka( id_epoka int primary key, nazwa_epoka varchar(30),
		id_okres int foreign key references Geologia.GeoOkres(id_okres));

create table Geologia.GeoPietro(id_pietro int primary key, nazwa_pietro varchar(30),
		id_epoka int foreign key references Geologia.GeoEpoka(id_epoka));
--____________________________________________________________________

insert into Geologia.GeoEon values(1,'fanerozoik');

insert into Geologia.GeoEra values(1,'paleozoik',1);
insert into Geologia.GeoEra values(2,'mezozoik',1);
insert into Geologia.GeoEra values(3,'kenozoik',1);

insert into Geologia.GeoOkres values(1, 'dewon',1);
insert into Geologia.GeoOkres values(2, 'karbon',1);
insert into Geologia.GeoOkres values(3, 'perm',1);
insert into Geologia.GeoOkres values(4, 'trias',2);
insert into Geologia.GeoOkres values(5, 'jura',2);
insert into Geologia.GeoOkres values(6, 'kreda',2);
insert into Geologia.GeoOkres values(7, 'palogen',3);
insert into Geologia.GeoOkres values(8, 'neogen',3);
insert into Geologia.GeoOkres values(9, 'czwartorzad',3);

insert into Geologia.GeoEpoka values(1, 'dolny', 1);
insert into Geologia.GeoEpoka values(2, 'srodkowy', 1);
insert into Geologia.GeoEpoka values(3, 'gorny', 1);
insert into Geologia.GeoEpoka values(4, 'dolny', 2);
insert into Geologia.GeoEpoka values(5, 'gorny', 2);
insert into Geologia.GeoEpoka values(6, 'dolny', 3);
insert into Geologia.GeoEpoka values(7, 'gorny', 3);
insert into Geologia.GeoEpoka values(8, 'dolny', 4);
insert into Geologia.GeoEpoka values(9, 'srodkowy', 4);
insert into Geologia.GeoEpoka values(10, 'gorny', 4);
insert into Geologia.GeoEpoka values(11, 'dolna', 5);
insert into Geologia.GeoEpoka values(12, 'srodkowa', 5);
insert into Geologia.GeoEpoka values(13, 'gorna', 5);
insert into Geologia.GeoEpoka values(14, 'dolna', 6);
insert into Geologia.GeoEpoka values(15, 'gorna', 6);
insert into Geologia.GeoEpoka values(16, 'paleocen', 7);
insert into Geologia.GeoEpoka values(17, 'eocen', 7);
insert into Geologia.GeoEpoka values(18, 'oligocen', 7);
insert into Geologia.GeoEpoka values(19, 'miocen', 8);
insert into Geologia.GeoEpoka values(20, 'pliocen', 8);
insert into Geologia.GeoEpoka values(21, 'plejstocen', 9);
insert into Geologia.GeoEpoka values(22, 'holocen', 9);

insert into Geologia.GeoPietro values (1,'megalaj',1);
insert into Geologia.GeoPietro values(2,'northgrip',1);
insert into Geologia.GeoPietro values(3,'grenland',1);

insert into Geologia.GeoPietro values(4,'pozny[b]',2);
insert into Geologia.GeoPietro values(5,'chiban',2);
insert into Geologia.GeoPietro values(6,'kalabr',2);
insert into Geologia.GeoPietro values(7,'gelas',2);

insert into Geologia.GeoPietro values(8,'piacent',3);
insert into Geologia.GeoPietro values(9,'zankl',3);

insert into Geologia.GeoPietro values(10,'messyn',4);
insert into Geologia.GeoPietro values(11,'torton',4);
insert into Geologia.GeoPietro values(12,'serrawal',4);
insert into Geologia.GeoPietro values(13,'lang',4);
insert into Geologia.GeoPietro values(14,'burdyga³',4);
insert into Geologia.GeoPietro values(15,'akwitan',4);

insert into Geologia.GeoPietro values(16,'szat',5);
insert into Geologia.GeoPietro values(17,'rupel',5);

insert into Geologia.GeoPietro values(18,'priabon',6);
insert into Geologia.GeoPietro values(19,'barton',6);
insert into Geologia.GeoPietro values(20,'lutet',6);
insert into Geologia.GeoPietro values(21,'iprez',6);

insert into Geologia.GeoPietro values(22,'tanet',7);
insert into Geologia.GeoPietro values(23,'zeland',7);
insert into Geologia.GeoPietro values(24,'dan',7);

insert into Geologia.GeoPietro values(25,'mastrycht',8);
insert into Geologia.GeoPietro values(26,'kampan',8);
insert into Geologia.GeoPietro values(27,'santon',8);
insert into Geologia.GeoPietro values(28,'koniak',8);
insert into Geologia.GeoPietro values(29,'turon',8);
insert into Geologia.GeoPietro values(30,'cenoman',8);

insert into Geologia.GeoPietro values(31,'alb',9);
insert into Geologia.GeoPietro values(32,'apt',9);
insert into Geologia.GeoPietro values(33,'barrem',9);
insert into Geologia.GeoPietro values(34,'hoteryw',9);
insert into Geologia.GeoPietro values(35,'walan¿yn',9);
insert into Geologia.GeoPietro values(36,'berrias',9);

insert into Geologia.GeoPietro values(37,'tyton',10);
insert into Geologia.GeoPietro values(38,'kimeryd',10);
insert into Geologia.GeoPietro values(39,'oksford',10);

insert into Geologia.GeoPietro values(40,'kelowej',11);
insert into Geologia.GeoPietro values(41,'baton',11);
insert into Geologia.GeoPietro values(42,'bajos',11);
insert into Geologia.GeoPietro values(43,'aalen',11);

insert into Geologia.GeoPietro values(44,'toark',12);
insert into Geologia.GeoPietro values(45,'pliensbach',12);
insert into Geologia.GeoPietro values(46,'synemur',12);
insert into Geologia.GeoPietro values(47,'hettang',12);

insert into Geologia.GeoPietro values(48,'retyk',13);
insert into Geologia.GeoPietro values(49,'noryk',13);
insert into Geologia.GeoPietro values(50,'karnik',13);

insert into Geologia.GeoPietro values(51,'ladyn',14);
insert into Geologia.GeoPietro values(52,'anizyk',14);

insert into Geologia.GeoPietro values(53,'olenek',15);
insert into Geologia.GeoPietro values(54,'ind',15);

insert into Geologia.GeoPietro values(55,'czangsing',16);
insert into Geologia.GeoPietro values(56,'wucziaping',16);
insert into Geologia.GeoPietro values(57,'kapitan',16);
insert into Geologia.GeoPietro values(58,'word',16);

insert into Geologia.GeoPietro values(59,'road',17);
insert into Geologia.GeoPietro values(60,'kungur',17);
insert into Geologia.GeoPietro values(61,'artinsk',17);
insert into Geologia.GeoPietro values(62,'sakmar',17);
insert into Geologia.GeoPietro values(63,'assel',17);

insert into Geologia.GeoPietro values(64,'g¿el',18);
insert into Geologia.GeoPietro values(65,'kasimow',18);
insert into Geologia.GeoPietro values(66,'moskow',18);
insert into Geologia.GeoPietro values(67,'baszkir',18);

insert into Geologia.GeoPietro values(68,'serpuchow',19);
insert into Geologia.GeoPietro values(69,'wizen',19);
insert into Geologia.GeoPietro values(70,'turnej',19);

insert into Geologia.GeoPietro values(71,'famen',20);
insert into Geologia.GeoPietro values(72,'fran',20);

insert into Geologia.GeoPietro values(73,'¿ywet',21);
insert into Geologia.GeoPietro values(74,'eifel',21);

insert into Geologia.GeoPietro values(75,'ems',22);
insert into Geologia.GeoPietro values(76,'prag',22);
insert into Geologia.GeoPietro values(77,'lochkow',22);



--select * from Geologia.GeoEon
--select * from Geologia.GeoEra
--select * from Geologia.GeoOkres
--select * from Geologia.GeoEpoka
--select * from Geologia.GeoPietro

--_______________________________________

--tworzeine tabeli dziesiec i milion oraz wypelnienie ich wartosciami
create table Geologia.Dziesiec(cyfra int,bit int);
create table Geologia.Milion(liczba int,cyfra int, bit int);

insert into Geologia.Dziesiec values (0,1);
insert into Geologia.Dziesiec values (1,1);
insert into Geologia.Dziesiec values (2,1);
insert into Geologia.Dziesiec values (3,1);
insert into Geologia.Dziesiec values (4,1);
insert into Geologia.Dziesiec values (5,1);
insert into Geologia.Dziesiec values (6,1);
insert into Geologia.Dziesiec values (7,1);
insert into Geologia.Dziesiec values (8,1);
insert into Geologia.Dziesiec values (9,1);

insert into Geologia.Milion select a1.cyfra +10* a2.cyfra +100*a3.cyfra + 1000*a4.cyfra
+ 10000*a5.cyfra + 10000*a6.cyfra as liczba , a1.cyfra as cyfra, a1.bit as bit
from Geologia.Dziesiec a1, Geologia.Dziesiec a2, Geologia.Dziesiec a3, Geologia.Dziesiec a4, Geologia.Dziesiec a5, Geologia.Dziesiec a6 ;

--select * from Geologia.Dziesiec;
--select * from Geologia.Milion;


--stworzenie tabeli zdenormalizowanej GeoTabela 

select Geologia.GeoPietro.id_pietro,Geologia.GeoPietro.nazwa_pietro,
Geologia.GeoEpoka.id_epoka,Geologia.GeoEpoka.nazwa_epoka,
Geologia.GeoOkres.id_okres,Geologia.GeoOkres.nazwa_okres,
Geologia.GeoEra.id_era,Geologia.GeoEra.nazwa_era,
GeoEon.id_eon,GeoEon.nazwa_eon
into Geologia.GeoTabela from Geologia.GeoEon inner join Geologia.GeoEra on Geologia.GeoEon.id_eon=Geologia.GeoEra.id_eon
inner join Geologia.GeoOkres on GeoEra.id_era=GeoOkres.id_era
inner join Geologia.GeoEpoka on GeoOkres.id_okres=GeoEpoka.id_okres
inner join Geologia.GeoPietro on GeoEpoka.id_epoka=GeoPietro.id_epoka

--select * from Geologia.GeoTabela

alter table Geologia.GeoTabela add primary key(id_pietro);

--zapytanie1:
set statistics time on;
select COUNT(*) from Geologia.Milion INNER JOIN Geologia.GeoTabela on Milion.liczba%77 = GeoTabela.id_pietro;
set statistics time off;

--zapytanie2:

set statistics time on;
select COUNT(*) from Geologia.Milion inner join Geologia.GeoPietro on
(geologia.Milion.liczba%77=GeoPietro.id_pietro)
inner join Geologia.GeoEpoka on GeoPietro.id_epoka =GeoEpoka.id_epoka
inner join Geologia.GeoOkres on GeoEpoka.id_okres = GeoOkres.id_okres
inner join Geologia.GeoEra on GeoEra.id_era = GeoOkres.id_era
inner join Geologia.GeoEon on GeoEon.id_eon = GeoEra.id_eon
set statistics time off;


--zapytanie3:
set statistics time on;
select COUNT(*) from Geologia.Milion where Milion.liczba%77 = 
(select id_pietro from Geologia.GeoTabela where Milion.liczba%77=id_pietro)
set statistics time off;


--zapytanie 4

set statistics time on;
select COUNT(*) from Geologia.Milion where Milion.liczba%77 in
(select GeoPietro.id_pietro from Geologia.GeoPietro 
inner join Geologia.GeoEpoka on GeoPietro.id_epoka = GeoEpoka.id_epoka 
inner join Geologia.GeoOkres on GeoEpoka.id_okres = GeoOkres.id_okres
inner join Geologia.GeoEra on GeoEra.id_era = GeoOkres.id_era
inner join Geologia.GeoEon on GeoEon.id_eon = GeoEra.id_eon)
set statistics time off;


-- 2 etap: tworzenie indeksów
create index indxEon on Geologia.GeoEon(id_eon);
create index indxEra on Geologia.GeoEra(id_era, id_eon);
create index indxOkres on Geologia.GeoOkres(id_okres, id_era);
create index indxEpoka on Geologia.GeoEpoka(id_epoka, id_okres);
create index indxPietro on Geologia.GeoPietro(id_pietro, id_epoka);
create index indxLiczba on Geologia.Milion(liczba);
create index indxGeoTabela on Geologia.GeoTabela(id_pietro, id_epoka, id_era, id_okres,id_eon);

drop database TabelaStratygraficzna;