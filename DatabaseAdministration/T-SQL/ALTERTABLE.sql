ALTER TABLE tblEmployee
ADD CONSTRAINT unqGovernmentID UNIQUE (EmployeeGovernmentID);

SELECT EmployeeGovernmentID, COUNT(EmployeeGovernmentID) AS MyCount FROM tblEmployeee
GROUP BY EmployeeGovernmentID
HAVING COUNT(EmployeeGovernmentID) > 1

SELECT * FROM tblEmployeee WHERE EmployeeGovernmentID IN ('HN513777D', 'TX593671R')

BEGIN TRAN
DELETE FROM tblEmployee
WHERE EmployeeNumber < 3

DELETE TOP(2) FROM tblEmployee
WHERE EmployeeNumber IN (131, 132)

SELECT * FROM tblEmployeee WHERE EmployeeGovernmentID IN ('HN513777D', 'TX593671R')

COMMIT TRAN