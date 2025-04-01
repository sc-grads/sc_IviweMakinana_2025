-- Create the database if it doesn't exist
USE master 
    GO
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTest_IviweMakinana')
BEGIN
    CREATE DATABASE AutoTest_IviweMakinana;
END
GO

-- Switch to the AutoTest database
USE AutoTest_IviweMakinana;
GO

-- Create the user table if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'user')
BEGIN
    CREATE TABLE [user] (
        Name NVARCHAR(50),
        Surname NVARCHAR(50),
        Email NVARCHAR(100)
    );
END
GO
