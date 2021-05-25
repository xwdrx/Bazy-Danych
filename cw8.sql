use AdventureWorks2019;
--1.Przygotuj blok anonimowy, kt�ry:
-- znajdzie �redni� stawk� wynagrodzenia pracownik�w,
-- wy�wietli szczeg�y pracownik�w, kt�rych stawka wynagrodzenia jest ni�sza ni� �rednia.

BEGIN 
	select avg(Rate) as AVGRate from HumanResources.EmployeePayHistory;
	select FirstName, LastName, JobTitle,BirthDate,Gender, Rate
	from HumanResources.EmployeePayHistory inner join Person.Person on EmployeePayHistory.BusinessEntityID=Person.BusinessEntityID
	inner join  HumanResources.Employee on HumanResources.EmployeePayHistory.BusinessEntityID=HumanResources.Employee.BusinessEntityID
	where Rate<(select avg(Rate) from HumanResources.EmployeePayHistory)
	order by Rate;
end;

--select *  from HumanResources.EmployeePayHistory

--2.Utw�rz funkcj�, kt�ra zwr�ci dat� wysy�ki okre�lonego zam�wienia.
create or alter function wysylka(@n int)
returns @tab table (wysylka datetime)
as begin
	insert into @tab
	select ShipDate from Sales.SalesOrderHeader
	where SalesOrderID=@n;
	return
end;

select * from dbo.wysylka(43659)

select *  from Sales.SalesOrderHeader

--3. Utw�rz procedur� sk�adowan�, kt�ra jako parametr przyjmuj� nazw� produktu,
--a jako rezultat wy�wietla jego identyfikator, numer i dost�pno��.

create or alter procedure INFO(@name varchar(50))
as begin
	select Production.Product.ProductID, Production.Product.ProductNumber,sum(Production.ProductInventory.Quantity) as Quantity
	from Production.Product inner join Production.ProductInventory on Product.ProductID=ProductInventory.ProductID
	where Product.Name=@name 
	group by Product.ProductID,Product.ProductNumber
end;
exec INFO 'Blade';


select *  from Production.ProductInventory
select *  from Production.Product

--4. Utw�rz funkcj�, kt�ra zwraca numer karty kredytowej dla konkretnego zam�wienia.

create or alter function ccn(@n int)
returns @tab table (CreditCardNumber varchar(25))
as
begin
	insert into @tab
	select Sales.CreditCard.CardNumber 
	from Sales.CreditCard inner join Sales.SalesOrderHeader on Sales.CreditCard.CreditCardID=Sales.SalesOrderHeader.CreditCardID
	where SalesOrderID=@n;
	return
end;

select * from dbo.ccn(43666)

--select * from Sales.SalesOrderHeader

--5. Utw�rz procedur� sk�adowan�, kt�ra jako parametry wej�ciowe przyjmuje dwie liczby, num1 i num2,
--a zwraca wynik ich dzielenia. Ponadto warto�� num1 powinna zawsze by� wi�ksza ni� warto�� num2.
--Je�eli warto�� num1 jest mniejsza ni� num2, wygeneruj komunikat o b��dzie �Niew�a�ciwie zdefiniowa�e� dane wej�ciowe�.

create or alter procedure div(@num1 float, @num2 float)
as begin
declare @result float
	if(@num1 < @num2) print 'Niew�a�ciwie zdefiniowa�e� dane wej�ciowe.'
	else set @result=@num1/@num2
	select ROUND(@result,2)
	return 
end;

exec div 2,3

--6. Napisz procedur�, kt�ra jako parametr przyjmie NationalIDNumber danej osoby,
--a zwr�ci stanowisko oraz liczb� dni urlopowych i chorobowych.

create or alter procedure LeaveInfo(@n varchar(15))
as begin 
	select HumanResources.Employee.JobTitle,HumanResources.Employee.VacationHours/8 as VacationDays, HumanResources.Employee.SickLeaveHours/8 as SickLeavesDays
	from HumanResources.Employee
	where HumanResources.Employee.NationalIDNumber=@n
end;
exec LeaveInfo '253022876'


--7. Napisz procedur� b�d�c� kalkulatorem walutowym. Wykorzystaj dwie tabele: Sales.Currency oraz Sales.CurrencyRate.
--Parametrami wej�ciowymi maj� by�: kwota, waluty oraz data (CurrencyRateDate).
--Przyjmij, i� zawsze jedn� ze stron jest dolar ameryka�ski (USD).

create or alter procedure ExCal(@from char(3),@to char(3),@value float,@date datetime)
AS BEGIN 
	declare @code1 char(3)=@from, @code2 char(3)=@to;
	if @from='USD'
	begin
		select @code1 as FromCurrencyCode , @code2 as ToCurrencyCode, round(@value*AverageRate,2) as exchanged
		from Sales.CurrencyRate inner join Sales.Currency on Sales.CurrencyRate.ToCurrencyCode=Sales.Currency.CurrencyCode
		where CurrencyRateDate=@date and Currency.CurrencyCode=@to
	end
	if @from='EUR'
	begin 
		select @code1 as FromCurrencyCode , @code2 as ToCurrencyCode, round(@value/AverageRate,2) as exchanged
		from Sales.CurrencyRate inner join Sales.Currency on Sales.CurrencyRate.ToCurrencyCode=Sales.Currency.CurrencyCode
		where CurrencyRateDate=@date and Currency.CurrencyCode=@from
	end
END;

exec ExCal 'USD','EUR',100,'2011-05-31 00:00:00.000';
exec ExCal 'EUR','USD',100,'2011-05-31 00:00:00.000';

SELECT * FROM Sales.CurrencyRate

 