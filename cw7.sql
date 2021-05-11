create database cw7;

use cw7;

--ci¹g Fibonacciego
create function Fibonacci(@n int)
returns @tab table(ciag_fibonacciego int)
as
begin
declare @m int =0, @fib int =0, @fib1 int= 1, @i int=2
	insert into @tab values(@fib)
		while(@i <=@n+1)
			begin
			set @m=@fib+@fib1
			set @fib1=@fib
			set @fib=@m
			set @i = @i +1
			insert into @tab values(@fib)
			end
	return
end;

--procedura wywolujaca funcje fibonacciego

create or alter procedure show(@x int)
as 
begin
select * from dbo.Fibonacci(@x)
end;
exec show 6;




