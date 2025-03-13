-- Create the salesstaff table with necessary columns
CREATE TABLE salesstaff
(
    staffid INT NOT NULL PRIMARY KEY,      -- Unique identifier for each staff member
    firstname NVARCHAR(50) NOT NULL,       -- First name of the staff member
    lastname NVARCHAR(50) NOT NULL,        -- Last name of the staff member
    countryregion NVARCHAR(50) NOT NULL    -- Country or region of the staff member
);

-- Drop the table if it already exists
DROP TABLE salesstaff; -- Removes the salesstaff table from the database

-- View all records in the salesstaff table
SELECT * FROM salesstaff;

-- Insert data into salesstaff by selecting from another table (Sales.vSalesPerson)
INSERT INTO salesstaff
SELECT [BusinessEntityID], [FirstName], [LastName], [CountryRegionName] 
FROM [Sales].[vSalesPerson];

-- Delete all records from salesstaff
DELETE salesstaff;  -- Incorrect syntax (this line is unnecessary)
DELETE FROM salesstaff; -- Correct way to delete all rows

-- Delete records where countryregion is 'United States'
DELETE FROM salesstaff WHERE countryregion = 'United States';

-- Begin a transaction (allows rollback in case of an error)
BEGIN TRAN;
DELETE FROM salesstaff WHERE countryregion = 'United States';  -- Deletes records conditionally
COMMIT;                                                       -- Confirms the deletion (makes changes permanent)
ROLLBACK TRAN; -- Cancels the transaction and restores deleted records (if commit wasn't run)

-- Delete employees who have zero sales last year, using a subquery
DELETE FROM salesstaff
WHERE staffid IN
(SELECT [BusinessEntityID] FROM [Sales].[vSalesPerson] WHERE SalesLastYear = 0);

-- Alternative way to delete staff with zero sales last year using INNER JOIN
DELETE salesstaff 
FROM [Sales].[vSalesPerson] sp
INNER JOIN salesstaff ss
ON sp.[BusinessEntityID] = ss.staffid
WHERE sp.saleslastyear = 0; -- Deletes only matching records
