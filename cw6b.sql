--1. Utworz nowa baze danych nazywajac ja 'firma'
create database firma3;

use firma3;
--2. Dodaj nowy scheamt o nazwie 'ksiegowosc'
create schema ksiegowosc

--3. Dodaj do scheamtu 'ksiegowosc' tabele:
-- pracownicy:
 create table ksiegowosc.pracownicy(id_pracownika int primary key, imie varchar(15) not null, nazwisko varchar(40) not null, adres varchar(55) not null, telefon varchar(20)not null);

  --godziny
  create table ksiegowosc.godziny(id_godziny int primary key, data date not null, liczba_godzin int not null, id_pracownika int not null);

  --pensje

  create table ksiegowosc.pensje(id_pensji int primary key,stanowisko varchar(25), kwota decimal(7,2) not null);

  --premie

  create table ksiegowosc.premie(id_premii int primary key, rodzaj varchar(30), kwota int);

  --wynagrodzenie

  create table ksiegowosc.wynagrodzenie(id_wynagrodzenia int primary key, data date not null, id_pracownika int not null, id_godziny int not null, id_pensji int not null, id_premii int not null);

   -- dodawanie kluczy obcych

  alter table ksiegowosc.godziny
  add foreign key(id_pracownika) references ksiegowosc.pracownicy(id_pracownika);

  alter table ksiegowosc.wynagrodzenie
  add foreign key(id_pracownika) references ksiegowosc.pracownicy(id_pracownika);

  alter table ksiegowosc.wynagrodzenie
  add foreign key(id_godziny) references ksiegowosc.godziny(id_godziny);

   alter table ksiegowosc.wynagrodzenie
  add foreign key(id_pensji) references ksiegowosc.pensje(id_pensji);

  alter table ksiegowosc.wynagrodzenie
  add foreign key(id_premii) references ksiegowosc.premie(id_premii);

  --5.Wypelnij kazda tabele 10 rekordami i dodaj komentarze

   --pracownicy

  insert into ksiegowosc.pracownicy values(1, 'Agata', 'Majorowska', 'ul.Orzechowa 12, 30-663, Wieliczka', '745 585 468');
  insert into ksiegowosc.pracownicy values(2, 'Karol','Dziuba','ul.K¹cik 19, 32-720, Bochnia','785 548 357');
  insert into ksiegowosc.pracownicy values(3,'Aleksander','Wróbel','ul.Piekarska 52b, 30-002, Kraków','663 448 321');
  insert into ksiegowosc.pracownicy values(4,'Julia','Kisiel','ul.Zio³owa 13, 40-010, Katowice','725 256 482');
  insert into ksiegowosc.pracownicy values(5,'Micha³','Myœliwy','ul.Sadowa 16d, 34-100, Wadowice','752 647 158');
  insert into ksiegowosc.pracownicy values(6,'Miko³aj','Markiewicz','ul.Podgórska 12/32, 30-016, Kraków','725 486 286');
  insert into ksiegowosc.pracownicy values(7,'Karolina','Cieœlak','ul.Bukowska 14c,32-050, Skawina','584 259 478');
  insert into ksiegowosc.pracownicy values(8,'Dominika','Lesiñska','ul.Wielicka 45a, 30-045, Kraków','663 498 725');
  insert into ksiegowosc.pracownicy values(9,'Damian','Oleszak','ul.S¹decka 23, 32-700, Bochnia','654 488 201');
  insert into ksiegowosc.pracownicy values(10,'Jakub','Kamiñski','ul.Skawiñska 11/14, 30-040, Kraków','694 426 482');

  --godziny

  insert into ksiegowosc.godziny values(1,'2020-04-02',8,2);
  insert into ksiegowosc.godziny values(2,'2021-04-02',8,5);
  insert into ksiegowosc.godziny values(3,'2021-04-02',8,6);
  insert into ksiegowosc.godziny values(4,'2021-04-02',9,1);
  insert into ksiegowosc.godziny values(5,'2021-04-02',8,7);
  insert into ksiegowosc.godziny values(6,'2021-04-02',8,3);
  insert into ksiegowosc.godziny values(7,'2021-04-02',9,4);
  insert into ksiegowosc.godziny values(8,'2021-04-02',9,10);
  insert into ksiegowosc.godziny values(9,'2021-04-02',8,9);
  insert into ksiegowosc.godziny values(10,'2021-04-02',8,8);

  --pensje

  insert into ksiegowosc.pensje values(1,'zastêpca dyrektora',5400);
  insert into ksiegowosc.pensje values(2,'ksiêgowa',3748);
  insert into ksiegowosc.pensje values(3,'inspektor',3800);
  insert into ksiegowosc.pensje values(4, 'serwisant',5200);
  insert into ksiegowosc.pensje values(5, 'specjalista ds. logistyki',4750);
  insert into ksiegowosc.pensje values(6,'specjalista ds. sprzeda¿y',5100);
  insert into ksiegowosc.pensje values(7,'technik',4800);
  insert into ksiegowosc.pensje values(8,'konstruktor',4500);
  insert into ksiegowosc.pensje values(9, 'programista',5800);
  insert into ksiegowosc.pensje values(10,'dyrektor',6500);

  --premie

  insert into ksiegowosc.premie values(1,'œwi¹teczna',200);
  insert into ksiegowosc.premie values(2,'regulaminowa',200);
  insert into ksiegowosc.premie values(3,'jubileuszowa',500);
  insert into ksiegowosc.premie values(4,'-',0);
  insert into ksiegowosc.premie values(5,'motywacyjna',100);
  insert into ksiegowosc.premie values(6,'jubileuszowa',600);
  insert into ksiegowosc.premie values(7,'uznaniowa',100);
  insert into ksiegowosc.premie values(8,'œwi¹teczna',300);
  insert into ksiegowosc.premie values(9,'frekwencyjna',100);
  insert into ksiegowosc.premie values(10,'motywacyjna',160);

  --wynagrodzenie


  insert into ksiegowosc.wynagrodzenie values(1,'2021-04-24',10,9,9,4);
  insert into ksiegowosc.wynagrodzenie values(2,'2021-04-24',9,8,8,5);
  insert into ksiegowosc.wynagrodzenie values(3,'2021-04-24',8,10,1,7);
  insert into ksiegowosc.wynagrodzenie values(4,'2021-04-24',7,2,5,8);
  insert into ksiegowosc.wynagrodzenie values(5,'2021-04-24',8,1,6,9);
  insert into ksiegowosc.wynagrodzenie values(6,'2021-04-24',5,7,2,4);
  insert into ksiegowosc.wynagrodzenie values(7,'2021-04-24',4,6,7,10);
  insert into ksiegowosc.wynagrodzenie values(8,'2021-04-24',3,5,2,9);
  insert into ksiegowosc.wynagrodzenie values(9,'2021-04-24',2,4,4,6);
  insert into ksiegowosc.wynagrodzenie values(10,'2021-04-24',1,3,9,4);

 --wyswietlenie tabel
SELECT * FROM ksiegowosc.pracownicy;
SELECT * FROM ksiegowosc.godziny;
SELECT * FROM ksiegowosc.pensje;
SELECT * FROM ksiegowosc.premie;
SELECT * FROM ksiegowosc.wynagrodzenie;

--a zmodyfikuj numer telefonu w tabeli pracownicy, dodajac do niego numer kierunkowy dla Polski

update ksiegowosc.pracownicy
set telefon = '(+48) '+ pracownicy.telefon

--wyswietlenie
SELECT * FROM ksiegowosc.pracownicy;

--b modyfikacja numeru telefonu z wyswietleniem go w postaci '345-234-654'

update ksiegowosc.pracownicy
set telefon = concat(SUBSTRING(pracownicy.telefon,1,9),'-',SUBSTRING(pracownicy.telefon,11,3),'-',SUBSTRING(pracownicy.telefon,15,3));
SELECT * FROM ksiegowosc.pracownicy;

--c Wyœwietl dane pracownika, którego nazwisko jest najd³u¿sze, u¿ywaj¹c du¿ych liter.

select ksiegowosc.pracownicy.id_pracownika, UPPER(ksiegowosc.pracownicy.imie) as imie, UPPER(ksiegowosc.pracownicy.nazwisko) as nazwisko, ksiegowosc.pracownicy.adres,ksiegowosc.pracownicy.telefon
from ksiegowosc.pracownicy
where LEN(pracownicy.nazwisko) = (select MAX(LEN(pracownicy.nazwisko)) from ksiegowosc.pracownicy);

--d Wyœwietl dane pracowników i ich pensje zakodowane przy pomocy algorytmu md5
select HASHBYTES('md5',imie) as imie, HASHBYTES('md5',nazwisko) as nazwisko,HASHBYTES('md5',cast(ksiegowosc.pensje.kwota as varchar(32))) as pensje
from ksiegowosc.wynagrodzenie inner join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika 
inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji

--e Wyœwietl pracowników, ich pensje oraz premie. Wykorzystaj z³¹czenie lewostronne
select ksiegowosc.pracownicy.imie, ksiegowosc.pracownicy.nazwisko, ksiegowosc.pensje.kwota as pensje, ksiegowosc.premie.kwota as premie
from ksiegowosc.wynagrodzenie
left join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika
left join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji
left join ksiegowosc.premie on ksiegowosc.wynagrodzenie.id_premii=ksiegowosc.premie.id_premii
order by imie;

--f wygeneruj raport (zapytanie)
select 'Pracownik '+ imie +' '+ nazwisko +', w dniu '+ convert(varchar(12),ksiegowosc.wynagrodzenie.data)
+' otrzyma³ pensjê ca³kowit¹ na kwotê '+ convert(varchar(10),(ksiegowosc.pensje.kwota+ksiegowosc.premie.kwota +((ksiegowosc.godziny.liczba_godzin*21)-160)*20)) + 'z³, gdzie wynagrodzenie zasadnicze wynosi³o '
+ cast(ksiegowosc.pensje.kwota as varchar(10)) + 'z³, a premia: ' + cast(ksiegowosc.premie.kwota as varchar(10)) + 'z³, nadgodziny: '+ CONVERT(varchar(7),((ksiegowosc.godziny.liczba_godzin*21)-160)*20) + 'z³.' as raport
from ksiegowosc.wynagrodzenie 
left join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika
left join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji 
left join ksiegowosc.premie on ksiegowosc.wynagrodzenie.id_premii=ksiegowosc.premie.id_premii
left join ksiegowosc.godziny on ksiegowosc.wynagrodzenie.id_godziny=ksiegowosc.godziny.id_godziny;


