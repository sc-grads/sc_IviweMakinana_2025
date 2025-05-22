BEGIN TRANSACTION
SELECT COUNT(*) FROM tblTransaction

DELETE tblTransaction
FROM tblEmployeee AS E
RIGHT JOIN tblTransaction AS T
    ON E.EmployeeNumber = T.EmployeeNumber
WHERE E.EmployeeNumber IS NULL

SELECT COUNT(*) FROM tblTransaction

ROLLBACK TRANSACTION

SELECT COUNT(*) FROM tblTransaction