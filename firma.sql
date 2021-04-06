--1. Utworz nowa baze danych nazywajac ja 'firma'
create database firma;

use firma;
--2. Dodaj nowy scheamt o nazwie 'rozliczenia'
create schema rozliczenia

--3. Dodaj do scheamtu 'rozliczenia' 4 tabele:
-- pracownicy:
 create table rozliczenia.pracownicy(id_pracownika int primary key, imie varchar(15) not null, nazwisko varchar(40) not null, adres varchar(55) not null, telefon varchar(15)not null);
  
  --godziny
  create table rozliczenia.godziny(id_godziny int primary key, data date not null, liczba_godzin int not null, id_pracownika int not null);

  --pensje

  create table rozliczenia.pensje(id_pensji int primary key,stanowisko varchar(25), kwota decimal(7,2) not null, id_premii int not null);

  --premie

  create table rozliczenia.premie(id_premii int primary key, rodzaj varchar(30), kwota int);

   --d) dodawanie kluczy obcych 

  alter table rozliczenia.godziny 
  add foreign key(id_pracownika) references rozliczenia.pracownicy(id_pracownika);

  alter table rozliczenia.pensje
  add foreign key(id_premii) references rozliczenia.premie(id_premii);

  --4.Wypelnij kazda tabele 10 rekordami.

  --pracownicy

  insert into rozliczenia.pracownicy values(1, 'Agata', 'Majorowska', 'ul.Orzechowa 12, 30-663, Wieliczka', '+48 745 585 468');
  insert into rozliczenia.pracownicy values(2, 'Karol','Dziuba','ul.K¹cik 19, 32-720, Bochnia','+48 785 548 357');
  insert into rozliczenia.pracownicy values(3,'Aleksander','Wróbel','ul.Piekarska 52b, 30-002, Kraków','+48 663 448 321');
  insert into rozliczenia.pracownicy values(4,'Julia','Kisiel','ul.Zio³owa 13, 40-010, Katowice','+48 725 256 482');
  insert into rozliczenia.pracownicy values(5,'Micha³','Myœliwy','ul.Sadowa 16d, 34-100, Wadowice','+48 752 647 158');
  insert into rozliczenia.pracownicy values(6,'Miko³aj','Markiewicz','ul.Podgórska 12/32, 30-016, Kraków','+48 725 486 286');
  insert into rozliczenia.pracownicy values(7,'Karolina','Cieœlak','ul.Bukowska 14c,32-050, Skawina','+48 584 259 478');
  insert into rozliczenia.pracownicy values(8,'Dominika','Lesiñska','ul.Wielicka 45a, 30-045, Kraków','+48 663 498 725');
  insert into rozliczenia.pracownicy values(9,'Damian','Oleszak','ul.S¹decka 23, 32-700, Bochnia','+48 654 488 201');
  insert into rozliczenia.pracownicy values(10,'Jakub','Kamiñski','ul.Skawiñska 11/14, 30-040, Kraków','+48 694 426 482');

  --godziny

  insert into rozliczenia.godziny values(1,'2020-04-02',8,2);
  insert into rozliczenia.godziny values(2,'2021-04-02',8,5);
  insert into rozliczenia.godziny values(3,'2021-04-02',8,6);
  insert into rozliczenia.godziny values(4,'2021-04-02',9,1);
  insert into rozliczenia.godziny values(5,'2021-04-02',8,7);
  insert into rozliczenia.godziny values(6,'2021-04-02',8,3);
  insert into rozliczenia.godziny values(7,'2021-04-02',9,4);
  insert into rozliczenia.godziny values(8,'2021-04-02',9,10);
  insert into rozliczenia.godziny values(9,'2021-04-02',8,9);
  insert into rozliczenia.godziny values(10,'2021-04-02',8,8);

  --pensje

  insert into rozliczenia.pensje values(1,'zastêpca dyrektora',5400,2);
  insert into rozliczenia.pensje values(2,'ksiêgowa',3748,3);
  insert into rozliczenia.pensje values(3,'inspektor',3800,1);
  insert into rozliczenia.pensje values(4, 'serwisant',5200,4);
  insert into rozliczenia.pensje values(5, 'specjalista ds. logistyki',4750,6);
  insert into rozliczenia.pensje values(6,'specjalista ds. sprzeda¿y',5100,7);
  insert into rozliczenia.pensje values(7,'technik',4800,8);
  insert into rozliczenia.pensje values(8,'konstruktor',4500,5);
  insert into rozliczenia.pensje values(9, 'programista',5800,9);
  insert into rozliczenia.pensje values(10,'dyrektor',6500,10);

  --premie

  insert into rozliczenia.premie values(1,'œwi¹teczna',200);
  insert into rozliczenia.premie values(2,'œwi¹teczna',200);
  insert into rozliczenia.premie values(3,'jubileuszowa',500);
  insert into rozliczenia.premie values(4,'-',0);
  insert into rozliczenia.premie values(5,'motywacyjna',100);
  insert into rozliczenia.premie values(6,'jubileuszowa',500);
  insert into rozliczenia.premie values(7,'-',0);
  insert into rozliczenia.premie values(8,'œwi¹teczna',200);
  insert into rozliczenia.premie values(9,'frekwencyjna',100);
  insert into rozliczenia.premie values(10,'motywacyjna',100);

 --wyswietlenie tabel
SELECT * FROM rozliczenia.pracownicy;
SELECT * FROM rozliczenia.godziny;
SELECT * FROM rozliczenia.pensje;
SELECT * FROM rozliczenia.premie;

--5. za pomoc¹ zapytania SQL wyœwietl nazwiska pracownikow i ich adresy: sortowanie rosn¹co

Select nazwisko, adres from rozliczenia.pracownicy order by nazwisko ASC

--6. zapytanie konwertujace zapis daty z uwzglednieniem informacji o  dniu tygodnia oraz miesiaca

select DATENAME(WEEKDAY,data) as 'dzieñ tygodnia ', DATEPART(month,data) as 'miesi¹c' from rozliczenia.godziny;

--7a Zmiana atrybutu kwota  na kwota brutto

EXEC sp_rename 'rozliczenia.pensje.kwota', 'kwota_brutto', 'COLUMN';
alter table rozliczenia.pensje add kwota_netto decimal(7,2);
update rozliczenia.pensje set kwota_netto=kwota_brutto*0.81;

--tabela pensje z nowa kolumna kwota_netto

SELECT * FROM rozliczenia.pensje;