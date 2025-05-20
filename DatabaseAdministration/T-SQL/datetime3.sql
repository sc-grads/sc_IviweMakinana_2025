DECLARE @mydate AS datetime = '2015-06-25 01:02:03.456'
SELECT 'The date and time is: ' + @mydate
GO

DECLARE @mydate AS datetime = '2015-06-25 01:02:03.456'
SELECT convert(nvarchar(20), @mydate) AS MyConvertedDate
GO

DECLARE @mydate AS datetime = '2015-06-25 01:02:03.456'
SELECT cast(@mydate as nvarchar(20)) AS MyCastDate
SELECT convert(date, 'Thursday, 25 June 2015') AS MyConvertedDate
SELECT parse('Thursday, 25 June 2015' as date using 'es-ES') AS MyParsedDate
SELECT parse('Jueves, 25 de junio de 2015' as date) AS MySpanishParsedDate

SELECT format(cast('2015-06-25 01:02:03.456' as datetime), 'D') AS MyFormattedLongDate
SELECT format(cast('2015-06-25 01:02:03.456' as datetime), 'd') AS MyFormattedShortDate

SELECT format(cast('2015-06-25 01:02:03.456' as datetime), 'dd-MM-yyyy') AS MyFormattedBritishDate
SELECT format(cast('2015-06-25 01:02:03.456' as datetime), 'D','es-ES') AS MyFormattedInternationalLongDare