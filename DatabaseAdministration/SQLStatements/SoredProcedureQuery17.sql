-- Create a stored procedure to select all records from the Person.Address table
CREATE PROCEDURE SelectAllPersonAddress
AS
SELECT * FROM Person.Address;
GO; -- GO marks the end of the batch

-- Execute the stored procedure to retrieve all addresses
EXEC [dbo].[SelectAllPersonAddress];

-- Drop the procedure if it exists
DROP PROCEDURE [dbo].[SelectAllPersonAddressWithParams];

-- Create a stored procedure with a parameter to filter by city
CREATE PROCEDURE [dbo].[SelectAllPersonAddressWithParams] 
(@City NVARCHAR(30))  -- Takes City as an input parameter
AS
SET NOCOUNT ON;  -- Prevents extra messages from being returned
SELECT * FROM Person.Address WHERE City = @City;
GO;

-- Execute the procedure, filtering for 'New York'
EXEC SelectAllPersonAddressWithParams @City = 'New York';

-- Execute the procedure using positional parameter
EXEC SelectAllPersonAddressWithParams 'Miami';

-- Drop the procedure to redefine it with a default parameter value
DROP PROCEDURE [SelectAllPersonAddressWithParams];

-- Create a new version of the procedure with a default city parameter
CREATE PROCEDURE [dbo].[SelectAllPersonAddressWithParams] (@City NVARCHAR(30) = 'New York')
AS
BEGIN
SET NOCOUNT ON;
SELECT * FROM Person.Address WHERE City = @City;
END;
GO;

-- Execute the procedure with a specific city (overrides the default)
EXEC SelectAllPersonAddressWithParams 'Miami';

-- Modify the procedure to accept an additional parameter for state/province
CREATE PROCEDURE [dbo].[SelectAllPersonAddressWithParams] (@City NVARCHAR(30) = 'New York', @stateProvinceid INT)
AS
BEGIN
SET NOCOUNT ON;
SELECT * FROM Person.Address WHERE City = @City;
END;
GO;

-- Create an encrypted stored procedure version (not actually encrypted in this code)
CREATE PROCEDURE [dbo].[SelectAllPersonAddressWithParamswithEncryption] (@City NVARCHAR(30) = 'New York', @stateProvinceid INT)
AS
BEGIN
SET NOCOUNT ON;
SELECT * FROM Person.Address WHERE City = @City;
END;
GO;
