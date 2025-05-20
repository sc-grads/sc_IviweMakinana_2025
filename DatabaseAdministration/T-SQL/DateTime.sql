declare @mydate as datetime = '2015-06-24 12:34:56.124'
select @mydate as MyDate 


declare @mydate2 as datetime2(6) = '20150624 12:34:56.124'
Select @mydate2 as MyDate 

SELECT DATEFROMPARTS(2015, 06, 24) AS ThisDate
SELECT DATETIMEOFFSETFROMPARTS(2015, 06, 24, 12, 34, 56, 124, 0, 0, 0) AS ThatDate
SELECT YEAR(@mydate) AS myYear, MONTH(@mydate) AS myMonth, DAY(@mydate) AS myDay