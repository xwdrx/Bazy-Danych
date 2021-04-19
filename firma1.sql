--1. Utworz nowa baze danych nazywajac ja 'firma'
create database firma1;

use firma1;
--2. Dodaj nowy scheamt o nazwie 'ksiegowosc'
create schema ksiegowosc

--3. Dodaj do scheamtu 'ksiegowosc' tabele:
-- pracownicy:
 create table ksiegowosc.pracownicy(id_pracownika int primary key, imie varchar(15) not null, nazwisko varchar(40) not null, adres varchar(55) not null, telefon varchar(15)not null);
  
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

   EXEC sys.sp_addextendedproperty 
@name=N'Comment', 
@value=N'Tabela przechowujaca podstawowe dane pracownikow firmy',
@level0type=N'SCHEMA', @level0name='ksiegowosc',
@level1type=N'TABLE', @level1name='pracownicy'
GO

  insert into ksiegowosc.pracownicy values(1, 'Agata', 'Majorowska', 'ul.Orzechowa 12, 30-663, Wieliczka', '+48 745 585 468');
  insert into ksiegowosc.pracownicy values(2, 'Karol','Dziuba','ul.K¹cik 19, 32-720, Bochnia','+48 785 548 357');
  insert into ksiegowosc.pracownicy values(3,'Aleksander','Wróbel','ul.Piekarska 52b, 30-002, Kraków','+48 663 448 321');
  insert into ksiegowosc.pracownicy values(4,'Julia','Kisiel','ul.Zio³owa 13, 40-010, Katowice','+48 725 256 482');
  insert into ksiegowosc.pracownicy values(5,'Micha³','Myœliwy','ul.Sadowa 16d, 34-100, Wadowice','+48 752 647 158');
  insert into ksiegowosc.pracownicy values(6,'Miko³aj','Markiewicz','ul.Podgórska 12/32, 30-016, Kraków','+48 725 486 286');
  insert into ksiegowosc.pracownicy values(7,'Karolina','Cieœlak','ul.Bukowska 14c,32-050, Skawina','+48 584 259 478');
  insert into ksiegowosc.pracownicy values(8,'Dominika','Lesiñska','ul.Wielicka 45a, 30-045, Kraków','+48 663 498 725');
  insert into ksiegowosc.pracownicy values(9,'Damian','Oleszak','ul.S¹decka 23, 32-700, Bochnia','+48 654 488 201');
  insert into ksiegowosc.pracownicy values(10,'Jakub','Kamiñski','ul.Skawiñska 11/14, 30-040, Kraków','+48 694 426 482');

  --godziny

     EXEC sys.sp_addextendedproperty 
@name=N'Comment', 
@value=N'Tabela przechowujaca liczbe godzin przeporacowanych konkretnego dnia przez pracownikow',
@level0type=N'SCHEMA', @level0name='ksiegowosc',
@level1type=N'TABLE', @level1name='godziny'
GO

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

       EXEC sys.sp_addextendedproperty 
@name=N'Comment', 
@value=N'Tabela przechowujaca wysokosc pensji dla dostepnych stanowisk w firmie',
@level0type=N'SCHEMA', @level0name='ksiegowosc',
@level1type=N'TABLE', @level1name='pensje'
GO

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

       EXEC sys.sp_addextendedproperty 
@name=N'Comment', 
@value=N'Tabela przechowujaca wysokosc premii w zaleznosci od jej rodzaju',
@level0type=N'SCHEMA', @level0name='ksiegowosc',
@level1type=N'TABLE', @level1name='premie'
GO

  insert into ksiegowosc.premie values(1,'œwi¹teczna',200);
  insert into ksiegowosc.premie values(2,'œwi¹teczna',200);
  insert into ksiegowosc.premie values(3,'jubileuszowa',500);
  insert into ksiegowosc.premie values(4,'-',0);
  insert into ksiegowosc.premie values(5,'motywacyjna',100);
  insert into ksiegowosc.premie values(6,'jubileuszowa',500);
  insert into ksiegowosc.premie values(7,'-',0);
  insert into ksiegowosc.premie values(8,'œwi¹teczna',200);
  insert into ksiegowosc.premie values(9,'frekwencyjna',100);
  insert into ksiegowosc.premie values(10,'motywacyjna',100);

  --wynagrodzenie

       EXEC sys.sp_addextendedproperty 
@name=N'Comment', 
@value=N'Tabela przechowujaca id pracownika oraz przyznane mu wynagrodzenia wraz z data przyznania',
@level0type=N'SCHEMA', @level0name='ksiegowosc',
@level1type=N'TABLE', @level1name='wynagrodzenie'
GO

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

--6.wykonaj nastepoujace zapytania

--6a wyswietl id pracownika i jego nazwisko

	Select id_pracownika, nazwisko from ksiegowosc.pracownicy;

--6b wyswietl id praconwikow, ktorych placa jest wieksza niz 1000

Select ksiegowosc.wynagrodzenie.id_pracownika, ksiegowosc.pensje.kwota
from ksiegowosc.wynagrodzenie inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji =ksiegowosc.pensje.id_pensji
where ksiegowosc.pensje.kwota>1000
order by ksiegowosc.wynagrodzenie.id_pracownika;

--6c  wyswietl id pracownikow nieposiadajacych premii,ktorych placa jest wieksza niz 2000

select ksiegowosc.wynagrodzenie.id_pracownika,ksiegowosc.pensje.kwota, ksiegowosc.premie.rodzaj
from ksiegowosc.premie inner join (ksiegowosc.pensje inner join ksiegowosc.wynagrodzenie on ksiegowosc.pensje.id_pensji=ksiegowosc.wynagrodzenie.id_pensji) on ksiegowosc.premie.id_premii=ksiegowosc.wynagrodzenie.id_premii
where ksiegowosc.pensje.kwota >2000 and ksiegowosc.premie.rodzaj like '-';

--6d  wyswietl pracownikow, ktorych pierwsza litera imienia zaczyna sie na litere ‘J’.
select ksiegowosc.pracownicy.id_pracownika, ksiegowosc.pracownicy.imie, ksiegowosc.pracownicy.nazwisko
from ksiegowosc.pracownicy
where ksiegowosc.pracownicy.imie like 'j%'

--6e  wyswietl pracownikow, ktorych nazwisko zawiera litere ‘n’ oraz imie konczy sie na litere ‘a’.
select ksiegowosc.pracownicy.id_pracownika, ksiegowosc.pracownicy.imie, ksiegowosc.pracownicy.nazwisko
from ksiegowosc.pracownicy
where ksiegowosc.pracownicy.imie like '%a' and ksiegowosc.pracownicy.nazwisko like '%n%'


--6f wyœwietl imiê i nazwisko pracowników oraz liczbê ich nadgodzin, przyjmuj¹c, i¿ standardowy czas pracy to 160 h miesiêcznie (21 dni roboczych dla kwietnia)
select ksiegowosc.pracownicy.imie, ksiegowosc.pracownicy.nazwisko,( ksiegowosc.godziny.liczba_godzin*21)-160 as nadgodziny
from ksiegowosc.pracownicy inner join(ksiegowosc.wynagrodzenie inner join ksiegowosc.godziny on ksiegowosc.wynagrodzenie.id_godziny=ksiegowosc.godziny.id_godziny) on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika
where ( ksiegowosc.godziny.liczba_godzin*21)-160>0


--6g wyœwietl imiê i nazwisko pracowników, których pensja zawiera siê w przedziale 1500 –3000PLN
select ksiegowosc.pracownicy.imie,ksiegowosc.pracownicy.nazwisko
from (ksiegowosc.wynagrodzenie inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji) 
	inner join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika
where ksiegowosc.pensje.kwota between 1500 and 3000;

--6h  wyœwietl imiê i nazwisko pracowników, którzy pracowali w nadgodzinach i nie otrzymali premii
select ksiegowosc.pracownicy.imie, ksiegowosc.pracownicy.nazwisko
from ((ksiegowosc.wynagrodzenie inner join ksiegowosc.godziny on ksiegowosc.wynagrodzenie.id_godziny=ksiegowosc.godziny.id_godziny)
inner join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika)
inner join ksiegowosc.premie on ksiegowosc.wynagrodzenie.id_premii=ksiegowosc.premie.id_premii
where (ksiegowosc.godziny.liczba_godzin*21)-160>0 and ksiegowosc.premie.rodzaj like '-'
order by imie;

--6i uszereguj pracowników wed³ug pensji
select ksiegowosc.pracownicy.imie,ksiegowosc.pracownicy.nazwisko,ksiegowosc.pensje.kwota
from (ksiegowosc.wynagrodzenie inner join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika)
inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji
order by ksiegowosc.pensje.kwota;

--6j uszereguj pracowników wed³ug pensji i premii malej¹co
select ksiegowosc.pracownicy.imie,ksiegowosc.pracownicy.nazwisko,ksiegowosc.pensje.kwota, ksiegowosc.premie.kwota
from ((ksiegowosc.wynagrodzenie inner join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika)
	inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji) 
	inner join ksiegowosc.premie on ksiegowosc.wynagrodzenie.id_premii=ksiegowosc.premie.id_premii
order by ksiegowosc.pensje.kwota desc, ksiegowosc.premie.kwota desc;

--6k zlicz i pogrupuj pracowników wed³ug pola ‘stanowisko’
select ksiegowosc.pensje.stanowisko, count(ksiegowosc.pensje.stanowisko) as liczba_stanowisk
from (ksiegowosc.wynagrodzenie inner join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika)
	inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji
group by ksiegowosc.pensje.stanowisko;


--6l policz œredni¹, minimaln¹ i maksymaln¹ p³acê dla stanowiska ‘ksiêgowa'

select ksiegowosc.pensje.stanowisko,AVG(ksiegowosc.pensje.kwota) as Kwota_Srednia, Min(ksiegowosc.pensje.kwota) as Kwota_minimalna,
MAX(ksiegowosc.pensje.kwota) as Kwota_Maksymalna
from ksiegowosc.pensje
where ksiegowosc.pensje.stanowisko like '%ksiêgowa%'
group by ksiegowosc.pensje.stanowisko;


--6m policz sumê wszystkich wynagrodzeñ 
select Sum(ksiegowosc.pensje.kwota + ksiegowosc.premie.kwota) as wszystkie_wynagrodzenia,Sum(ksiegowosc.pensje.kwota) as wszystkie_pensje,Sum(ksiegowosc.premie.kwota) as wszystkie_premie
from (ksiegowosc.wynagrodzenie inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji)
	inner join ksiegowosc.premie on ksiegowosc.wynagrodzenie.id_premii=ksiegowosc.premie.id_premii;
	

--6  policz sumê wynagrodzeñ w ramach danego stanowiska.
select ksiegowosc.pensje.stanowisko, Sum(ksiegowosc.pensje.kwota) as suma_wynagrodzen
from ksiegowosc.wynagrodzenie inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji
group by ksiegowosc.pensje.stanowisko;

--6o  wyznacz liczbê premii przyznanych dla pracowników danego stanowiska

select ksiegowosc.pensje.stanowisko, count(ksiegowosc.premie.kwota) as liczba_premii
from ksiegowosc.wynagrodzenie inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji
	inner join ksiegowosc.premie on ksiegowosc.wynagrodzenie.id_premii=ksiegowosc.premie.id_premii
Group by ksiegowosc.pensje.stanowisko;

--6p  usuñ wszystkich pracowników maj¹cych pensjê mniejsz¹ ni¿ 1200 z³ 

	delete ksiegowosc.pracownicy
	from ksiegowosc.wynagrodzenie inner join ksiegowosc.pracownicy on ksiegowosc.wynagrodzenie.id_pracownika=ksiegowosc.pracownicy.id_pracownika
	inner join ksiegowosc.pensje on ksiegowosc.wynagrodzenie.id_pensji=ksiegowosc.pensje.id_pensji
	where ksiegowosc.pensje.kwota<1200;


select *from ksiegowosc.pracownicy;
select *from ksiegowosc.pensje;
