SELECT CURRENT_TIMESTAMP AS RightNow
SELECT getdate() AS RightNow
SELECT SYSDATETIME() AS RightNow
SELECT dateadd(YEAR, 1, '2015-01-02 03:04:05') AS myYear
SELECT datepart(hour, '2015-01-02 03:04:05') AS myHour
SELECT datename(WEEKDAY, getdate()) AS myAnswer
SELECT datediff(SECOND, '2015-01-02 03:04:05', getdate()) AS SecondsElapsed