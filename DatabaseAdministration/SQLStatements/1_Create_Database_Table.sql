-- Create the StudentRecords database
CREATE DATABASE StudentRecords;
GO

-- Switch to the new database
USE StudentRecords;
GO

-- Create the Students table
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 0),
    EnrollmentDate DATE DEFAULT GETDATE()
);
GO

