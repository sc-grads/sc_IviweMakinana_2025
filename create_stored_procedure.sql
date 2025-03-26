USE AutoTest;
GO

-- Create a stored procedure to insert data into the user table
IF OBJECT_ID('usp_InsertUser', 'P') IS NOT NULL
    DROP PROCEDURE usp_InsertUser;
GO

CREATE PROCEDURE usp_InsertUser
    @Name NVARCHAR(50),
    @Surname NVARCHAR(50),
    @Email NVARCHAR(100)
AS
BEGIN
    INSERT INTO [user] (Name, Surname, Email)
    VALUES (@Name, @Surname, @Email);
END
GO

-- Execute the stored procedure to insert sample data
EXEC usp_InsertUser @Name = 'John', @Surname = 'Doe', @Email = 'john.doe@example.com';
EXEC usp_InsertUser @Name = 'Jane', @Surname = 'Smith', @Email = 'jane.smith@example.com';
GO
