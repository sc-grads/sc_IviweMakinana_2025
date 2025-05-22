begin tran

insert into ViewByDepartment(Department, EmployeeNumber, DateOfTransaction, TOTALAmount)
values ('Customer Relations',132,'2015-07-07', 999.99)

select * from ViewByDepartment order by Department, EmployeeNumber

rollback tran

begin tran



--Select * from tblTransaction where EmployeeNumber in (132, 142)

update ViewByDepartment
set EmployeeNumber = 142
where EmployeeNumber = 132