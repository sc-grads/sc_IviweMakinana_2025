
-- Create a backup of the master database  
BACKUP DATABASE [master] 
TO DISK = N'C:\SQL_BACKUPS\master_backup.bak'  -- Specify backup file location  
WITH NOFORMAT,   -- Do not format the media  
     NOINIT,     -- Do not overwrite existing backups in the media set  
     NAME = N'master-Full Database Backup',  -- Name of the backup set  
     SKIP,       -- Skip checking for existing backups in the media set  
     NOREWIND,   -- Keep the backup media open for future backups  
     NOUNLOAD,   -- Do not unload the backup media  
     STATS = 10; -- Display progress every 10%  
GO  

-- Restore the master database from the backup  
RESTORE DATABASE master  
FROM DISK = 'C:\SQL_BACKUPS\master_backup.bak'  
WITH REPLACE;  -- Overwrite the existing master database  
 
-- Run the Command Management Shell (CMS) as Admin and type:  
-- Stops the SQL Server service  
net stop mssqlserver  

-- Starts the SQL Server service in single-user mode  
net start mssqlserver /m  

-- Restore the master database from another test backup  
RESTORE DATABASE master_recovery  
FROM DISK = 'C:\SQL_BACKUPS\master_backup_testrestore.bak'  
WITH  
    MOVE 'master' TO 'C:\master_recovery.mdf',   -- Move primary data file  
    MOVE 'mastlog' TO 'C:\mastlog_recovery.ldf'; -- Move log file  

-- (Commented Path: This might be the default data file location)  
-- C:\SQL_DATA_FILES\MSSQL13.MSSQLSERVER\MSSQL\DATA  

-- Detach the 'master_recovery' database  
USE [master]  
GO  
EXEC master.dbo.sp_detach_db @dbname = N'master_recovery';  
GO  
