DECLARE @myDateOffset AS datetimeoffset = '2015-06-25 01:02:03.456 +05:30'--8 to 10 byts
SELECT @myDateOffset AS MyDateOffset
GO

DECLARE @myDate AS datetime2 = '2015-06-25 01:02:03.456'
SELECT TODATETIMEOFFSET(@myDate, '+05:30') AS MyDateOffset


SELECT DATETIMEOFFSETFROMPARTS(2015, 06, 25, 1, 2, 3, 456, 5, 30, 3) AS MyDateOffset
SELECT SYSDATETIMEOFFSET() AS TimeNowWithOffset;
SELECT SYSUTCDATETIME() AS TimeNowUTC;

DECLARE @myDateOffset AS datetimeoffset = '2015-06-25 01:02:03.456 +05:30'
SELECT SWITCHOFFSET(@myDateOffset, '-05:00') AS MyDateOffsetTexas