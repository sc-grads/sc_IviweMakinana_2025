SELECT Department AS NumberOfDepartments
FROM
    (SELECT Department, COUNT(*) AS NumberPerDepartment
     FROM tblEmployeee
     GROUP BY Department) AS newTable
-- derived table

SELECT DISTINCT Department, '' AS DepartmentHead
INTO tblDept
FROM tblEmployeee

SELECT * FROM Department