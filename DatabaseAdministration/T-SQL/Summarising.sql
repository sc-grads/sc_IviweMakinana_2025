SELECT left (EmployeeLastName, 1) AS Initial, COUNT(*) AS CountOfInitial
FROM tblEmployeee
GROUP BY LEFT(EmployeeLastName, 1)
ORDER BY COUNT(*) DESC, LEFT(EmployeeLastName, 1)

SELECT TOP(5) LEFT(EmployeeLastName, 1) AS Initial, COUNT(*) AS CountOfInitial
FROM tblEmployeee
GROUP BY LEFT(EmployeeLastName, 1)
ORDER BY COUNT(*) DESC, LEFT(EmployeeLastName, 1)

SELECT LEFT(EmployeeLastName, 1) AS Initial, COUNT(*) AS CountOfInitial
FROM tblEmployeee
WHERE DateOfBirth > '1986-01-01'
GROUP BY LEFT(EmployeeLastName, 1)
HAVING COUNT(*) > 20
ORDER BY COUNT(*) DESC