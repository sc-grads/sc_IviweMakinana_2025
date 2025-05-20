select * from tblEmployeee
where not[EmployeeNumber] >200

select * from tblEmployeee
where  [EmployeeNumber]!= 200

select * from tblEmployeee
where  [EmployeeNumber] >= 200 and [EmployeeNumber] <= 209

select * from tblEmployeee
where  not ([EmployeeNumber] >= 200 and [EmployeeNumber] <= 209)

select * from tblEmployeee
where  not ([EmployeeNumber] >= 200 or [EmployeeNumber] <= 209)

select * from tblEmployeee
where [EmployeeNumber]  between 200 and 209

select * from tblEmployeee
where [EmployeeNumber]  not between 200 and 209

