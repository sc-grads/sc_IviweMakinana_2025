-- Delete a student from the table
USE StudentRecords;
GO

DELETE FROM Students
WHERE FirstName = 'Mike' AND LastName = 'Johnson';
GO

-- Verify the deletion
SELECT * FROM Students;
