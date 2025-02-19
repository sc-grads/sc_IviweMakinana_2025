-- Insert sample data into the Students table
USE StudentRecords;
GO

INSERT INTO Students (FirstName, LastName, Age)
VALUES 
    ('John', 'Doe', 20),
    ('Jane', 'Smith', 22),
    ('Mike', 'Johnson', 19);
GO

-- Verify the inserted records
SELECT * FROM Students;
