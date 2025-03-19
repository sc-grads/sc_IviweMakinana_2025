BACKUP DATABASE [AdventureWorks2022] TO  DISK = N'C:\SQL_Backup\AdventureWorks2022.bak',  DISK = N'C:\Repo\DatabaseAdministration\SQLStatements\AdventureWorks2020'
WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
