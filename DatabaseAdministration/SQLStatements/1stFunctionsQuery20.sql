CREATE TABLE FunctionEmployee(
	EmpID int NOT NULL,
	FirstName varchar(50) NULL,
	LastName varchar (50) NULL,
	Salary int NULL,
	Address varchar(100) NULL,
	)


insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (1,'Abbas','Mehmood', 20000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (2,'Imran','Afzal', 50000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (3,'James','Dino', 90000, 'Delhi')
insert into [FunctionEmployee] ([EmpID],[FirstName],[LastName],[Salary],[Address]) values (4,'Jaga','Babu', 70000, 'Delhi')

 select * from FunctionEmployee

Create function fnGetEmpFullName
( @FirstName varchar(50), @LastName varchar(50))
returns varchar(101)
As
begin
return (select @FirstName + ' '+@LastName);
end
GO


select dbo.fnGetEmpFullName (firstname,lastname) as Fullname , salary from FunctionEmployee

select firstname + ' ' +lastname as Fullname , salary from FunctionEmployee

create function [dbo].[fnGetEmployee]()
returns Table
As
return (select * from FunctionEmployee)
GO


select * from dbo.fnGetEmployee


