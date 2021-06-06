create table GeoEon(id_eon int primary key,nazwa_eon varchar(30));

create table GeoEra( id_era int primary key, nazwa_era varchar(30),
		id_eon int );

create table GeoOkres(id_okres int primary key, nazwa_okres varchar(30),
		id_era int );

create table GeoEpoka( id_epoka int primary key, nazwa_epoka varchar(30),
		id_okres int );

create table GeoPietro(id_pietro int primary key, nazwa_pietro varchar(30),
		id_epoka int );


alter table GeoEra add foreign key (id_eon) references GeoEon (id_eon);
alter table GeoOkres add foreign key (id_era) references GeoEra (id_era);
alter table GeoEpoka add foreign key (id_okres) references GeoOkres (id_okres);
alter table GeoPietro add foreign key (id_epoka) references GeoEpoka (id_epoka);


insert into GeoEon values(1,'fanerozoik');

insert into GeoEra values(1,'paleozoik',1);
insert into GeoEra values(2,'mezozoik',1);
insert into GeoEra values(3,'kenozoik',1);

insert into GeoOkres values(1, 'dewon',1);
insert into GeoOkres values(2, 'karbon',1);
insert into GeoOkres values(3, 'perm',1);
insert into GeoOkres values(4, 'trias',2);
insert into GeoOkres values(5, 'jura',2);
insert into GeoOkres values(6, 'kreda',2);
insert into GeoOkres values(7, 'palogen',3);
insert into GeoOkres values(8, 'neogen',3);
insert into GeoOkres values(9, 'czwartorzad',3);

insert into GeoEpoka values(1, 'dolny', 1);
insert into GeoEpoka values(2, 'srodkowy', 1);
insert into GeoEpoka values(3, 'gorny', 1);
insert into GeoEpoka values(4, 'dolny', 2);
insert into GeoEpoka values(5, 'gorny', 2);
insert into GeoEpoka values(6, 'dolny', 3);
insert into GeoEpoka values(7, 'gorny', 3);
insert into GeoEpoka values(8, 'dolny', 4);
insert into GeoEpoka values(9, 'srodkowy', 4);
insert into GeoEpoka values(10, 'gorny', 4);
insert into GeoEpoka values(11, 'dolna', 5);
insert into GeoEpoka values(12, 'srodkowa', 5);
insert into GeoEpoka values(13, 'gorna', 5);
insert into GeoEpoka values(14, 'dolna', 6);
insert into GeoEpoka values(15, 'gorna', 6);
insert into GeoEpoka values(16, 'paleocen', 7);
insert into GeoEpoka values(17, 'eocen', 7);
insert into GeoEpoka values(18, 'oligocen', 7);
insert into GeoEpoka values(19, 'miocen', 8);
insert into GeoEpoka values(20, 'pliocen', 8);
insert into GeoEpoka values(21, 'plejstocen', 9);
insert into GeoEpoka values(22, 'holocen', 9);

insert into GeoPietro values (1,'megalaj',1);
insert into GeoPietro values(2,'northgrip',1);
insert into GeoPietro values(3,'grenland',1);

insert into GeoPietro values(4,'pozny[b]',2);
insert into GeoPietro values(5,'chiban',2);
insert into GeoPietro values(6,'kalabr',2);
insert into GeoPietro values(7,'gelas',2);

insert into GeoPietro values(8,'piacent',3);
insert into GeoPietro values(9,'zankl',3);

insert into GeoPietro values(10,'messyn',4);
insert into GeoPietro values(11,'torton',4);
insert into GeoPietro values(12,'serrawal',4);
insert into GeoPietro values(13,'lang',4);
insert into GeoPietro values(14,'burdygał',4);
insert into GeoPietro values(15,'akwitan',4);

insert into GeoPietro values(16,'szat',5);
insert into GeoPietro values(17,'rupel',5);

insert into GeoPietro values(18,'priabon',6);
insert into GeoPietro values(19,'barton',6);
insert into GeoPietro values(20,'lutet',6);
insert into GeoPietro values(21,'iprez',6);

insert into GeoPietro values(22,'tanet',7);
insert into GeoPietro values(23,'zeland',7);
insert into GeoPietro values(24,'dan',7);

insert into GeoPietro values(25,'mastrycht',8);
insert into GeoPietro values(26,'kampan',8);
insert into GeoPietro values(27,'santon',8);
insert into GeoPietro values(28,'koniak',8);
insert into GeoPietro values(29,'turon',8);
insert into GeoPietro values(30,'cenoman',8);

insert into GeoPietro values(31,'alb',9);
insert into GeoPietro values(32,'apt',9);
insert into GeoPietro values(33,'barrem',9);
insert into GeoPietro values(34,'hoteryw',9);
insert into GeoPietro values(35,'walanżyn',9);
insert into GeoPietro values(36,'berrias',9);

insert into GeoPietro values(37,'tyton',10);
insert into GeoPietro values(38,'kimeryd',10);
insert into GeoPietro values(39,'oksford',10);

insert into GeoPietro values(40,'kelowej',11);
insert into GeoPietro values(41,'baton',11);
insert into GeoPietro values(42,'bajos',11);
insert into GeoPietro values(43,'aalen',11);

insert into GeoPietro values(44,'toark',12);
insert into GeoPietro values(45,'pliensbach',12);
insert into GeoPietro values(46,'synemur',12);
insert into GeoPietro values(47,'hettang',12);

insert into GeoPietro values(48,'retyk',13);
insert into GeoPietro values(49,'noryk',13);
insert into GeoPietro values(50,'karnik',13);

insert into GeoPietro values(51,'ladyn',14);
insert into GeoPietro values(52,'anizyk',14);

insert into GeoPietro values(53,'olenek',15);
insert into GeoPietro values(54,'ind',15);

insert into GeoPietro values(55,'czangsing',16);
insert into GeoPietro values(56,'wucziaping',16);
insert into GeoPietro values(57,'kapitan',16);
insert into GeoPietro values(58,'word',16);

insert into GeoPietro values(59,'road',17);
insert into GeoPietro values(60,'kungur',17);
insert into GeoPietro values(61,'artinsk',17);
insert into GeoPietro values(62,'sakmar',17);
insert into GeoPietro values(63,'assel',17);

insert into GeoPietro values(64,'gżel',18);
insert into GeoPietro values(65,'kasimow',18);
insert into GeoPietro values(66,'moskow',18);
insert into GeoPietro values(67,'baszkir',18);

insert into GeoPietro values(68,'serpuchow',19);
insert into GeoPietro values(69,'wizen',19);
insert into GeoPietro values(70,'turnej',19);

insert into GeoPietro values(71,'famen',20);
insert into GeoPietro values(72,'fran',20);

insert into GeoPietro values(73,'żywet',21);
insert into GeoPietro values(74,'eifel',21);

insert into GeoPietro values(75,'ems',22);
insert into GeoPietro values(76,'prag',22);
insert into GeoPietro values(77,'lochkow',22);

insert into GeoPietro values(78,'przydol');
insert into GeoPietro values(79,'ludford');
insert into GeoPietro values(80,'gorst');
insert into GeoPietro values(81,'homer');
insert into GeoPietro values(82,'szejnwud');
insert into GeoPietro values(83,'telicz');
insert into GeoPietro values(84,'aeron');
insert into GeoPietro values(85,'ruddan');
insert into GeoPietro values(86,'hirnant');
insert into GeoPietro values(87,'kat');
insert into GeoPietro values(88,'sandb');
insert into GeoPietro values(89,'darriwil');
insert into GeoPietro values(90,'daping');
insert into GeoPietro values(91,'flo');
insert into GeoPietro values(92,'tremadok');
insert into GeoPietro values(93,'piętro');
insert into GeoPietro values(94,'dziangszan');
insert into GeoPietro values(95,'paib');
insert into GeoPietro values(96,'gużang');
insert into GeoPietro values(97,'drum');
insert into GeoPietro values(98,'wuliuan');
insert into GeoPietro values(99,'piętro');
insert into GeoPietro values(100,'piętro');
insert into GeoPietro values(101,'piętro');
insert into GeoPietro values(102,'fortun');
insert into GeoPietro values(103,'ediakar');
insert into GeoPietro values(104,'kriogen');
insert into GeoPietro values(105,'ton');
insert into GeoPietro values(106,'sten');
insert into GeoPietro values(107,'ektas');
insert into GeoPietro values(108,'kalim');
insert into GeoPietro values(109,'stater');
insert into GeoPietro values(110,'orosir');
insert into GeoPietro values(111,'riak');
insert into GeoPietro values(112,'sider');
insert into GeoPietro values(113,'neoarchaik');
insert into GeoPietro values(114,'mezoarchaik');
insert into GeoPietro values(115,'paleoarchaik');
insert into GeoPietro values(116,'eoarchaik');
insert into GeoPietro values(117,'hadeik');


select * from GeoEon;
select * from GeoEra;
select * from GeoOkres;
select * from GeoEpoka;
select * from GeoPietro;

--_______________________________________
 CREATE TABLE GeoTabela AS (SELECT * FROM GeoPietro NATURAL JOIN GeoEpoka NATURAL
JOIN GeoOkres NATURAL JOIN GeoEra NATURAL JOIN GeoEon);



--tworzeine tabeli dziesiec i milion oraz wypelnienie ich wartosciami
create table Dziesiec(cyfra int,bit int);
create table Milion(liczba int,cyfra int, bit int);

insert into Dziesiec values (0,1);
insert into Dziesiec values (1,1);
insert into Dziesiec values (2,1);
insert into Dziesiec values (3,1);
insert into Dziesiec values (4,1);
insert into Dziesiec values (5,1);
insert into Dziesiec values (6,1);
insert into Dziesiec values (7,1);
insert into Dziesiec values (8,1);
insert into Dziesiec values (9,1);


insert into Milion 
select a1.cyfra +10* a2.cyfra +100*a3.cyfra + 1000*a4.cyfra
+ 10000*a5.cyfra + 10000*a6.cyfra as liczba , a1.cyfra as cyfra, a1.bit as bit
from Dziesiec a1, Dziesiec a2, Dziesiec a3, Dziesiec a4, Dziesiec a5, Dziesiec a6;

select*from Dziesiec;
select*from Milion;



-- _________________ZAPYTANIA___________________

--1
EXPLAIN SELECT COUNT(*) FROM Milion INNER JOIN GeoTabela ON (mod(Milion.liczba,77)=(GeoTabela.id_pietro));
--2
EXPLAIN SELECT COUNT(*) FROM Milion INNER JOIN GeoPietro ON (mod(Milion.liczba,77)=GeoPietro.id_pietro) 
NATURAL JOIN GeoEpoka NATURAL JOIN GeoOkres NATURAL JOIN GeoEra NATURAL JOIN GeoEon;

--3
EXPLAIN SELECT COUNT(*) FROM Milion WHERE mod(Milion.liczba,77)=
(SELECT id_pietro FROM GeoTabela WHERE mod(Milion.liczba,77)=(id_pietro));
--4
EXPLAIN SELECT COUNT(*) FROM Milion WHERE mod(Milion.liczba,77) in
(SELECT GeoPietro.id_pietro FROM GeoPietro NATURAL JOIN GeoEpoka NATURAL JOIN GeoOkres NATURAL JOIN GeoEra NATURAL JOIN GeoEon);

--_____________DODANIE INDEKSOW 
create index indxEon on GeoEon(id_eon);
create index indxEra on GeoEra(id_era, id_eon);
create index indxOkres on GeoOkres(id_okres, id_era);
create index indxEpoka on GeoEpoka(id_epoka, id_okres);
create index indxPietro on GeoPietro(id_pietro, id_epoka);
create index indxLiczba on Milion(liczba);
create index indxGeoTabela on GeoTabela(id_pietro, id_epoka, id_era, id_okres,id_eon);

drop database TabelaStratygraficzna