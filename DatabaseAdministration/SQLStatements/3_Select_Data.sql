-- Retrieve all records from Students table
USE StudentRecords;
GO

SELECT * FROM Students;
GO

-- Retrieve only FirstName and LastName
SELECT FirstName, LastName FROM Students;
GO

-- Retrieve students older than 20
SELECT * FROM Students WHERE Age > 20;
GO
