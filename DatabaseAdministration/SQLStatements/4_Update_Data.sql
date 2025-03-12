-- Update the age of John Doe
USE StudentRecords;
GO

UPDATE Students
SET Age = 21
WHERE FirstName = 'John' AND LastName = 'Doe';
GO

-- Verify the update
SELECT * FROM Students WHERE FirstName = 'John' AND LastName = 'Doe';
