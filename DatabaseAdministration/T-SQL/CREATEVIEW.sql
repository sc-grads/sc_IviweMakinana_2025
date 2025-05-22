-- Test query
SELECT 1;
GO

-- Corrected view creation
CREATE VIEW ViewByDepartment AS 
SELECT 
    D.Department, 
    T.EmployeeNumber, 
    T.DateOfTransaction, 
    T.Amount AS TotalAmount
FROM tblDept AS D
LEFT JOIN tblEmployeee AS E
    ON D.Department = E.Department
LEFT JOIN tblTransaction AS T
    ON E.EmployeeNumber = T.EmployeeNumber
WHERE T.EmployeeNumber BETWEEN 120 AND 139;
GO

SELECT D.Department, T.EmployeeNumber AS EmpNum, SUM(T.Amount) AS TotalAmount
FROM tblDepartment AS D
LEFT JOIN tblEmployeee AS E
    ON D.Department = E.Department
LEFT JOIN tblTransaction AS T
    ON E.EmployeeNumber = T.EmployeeNumber
GROUP BY D.Department, T.EmployeeNumber
ORDER BY D.Department, T.EmployeeNumber