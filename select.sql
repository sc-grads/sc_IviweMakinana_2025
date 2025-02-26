USE StudentRecords;
GO
INSERT INTO Students (FirstName, LastName, Age)
VALUES 
    ('John', 'Doe', 20),
    ('Jane', 'Smith', 22),
    ('Mike', 'Johnson', 19);
GO
SELECT * FROM Students;
