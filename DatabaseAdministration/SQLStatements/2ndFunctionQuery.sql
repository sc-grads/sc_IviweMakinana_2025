USE [AdventureWorks2016]
GO

/****** Object:  UserDefinedFunction [dbo].[fnGetMulEmployee]    Script Date: 10/24/2022 10:33:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[fnGetMulEmployee]()
returns @Emp Table
(
Empid int,
FirstName varchar(50),
Salary int
)
As
Begin
 Insert into @Emp Select e.EmpID,e.FirstName,e.Salary from FunctionEmployee e;
--Now update salary of first employee
 update @Emp set Salary=25000 where EmpID=1;
--It will update only in @Emp table not in Original Employee table
return
end 
GO