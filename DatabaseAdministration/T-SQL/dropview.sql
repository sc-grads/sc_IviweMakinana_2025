USE [70-461]
GO

/****** Object:  View [dbo].[ViewByDepartment]    Script Date: 2025/05/21 09:49:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- if exists(select * from sys.views where name = 'ViewByDepartment')
if exists(select * from INFORMATION_SCHEMA.VIEWS 
where [TABLE_NAME] = 'ViewByDepartment' and [TABLE_SCHEMA] = 'dbo')
drop view dbo.ViewByDepartment
go

-- Corrected view creation
ALTER VIEW [dbo].[ViewByDepartment] AS 
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

select * from ViewByDepartment order by Department, EmployeeNumber
