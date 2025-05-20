create TABLE tblEmployeee
(
    EmployeeNumber INT NOT NULL,
    EmployeeFirstName VARCHAR(50) NOT NULL,
    EmployeeMiddleName VARCHAR(50) NULL,
    EmployeeLastName VARCHAR(50) NOT NULL,
    EmployeeGovernmentID CHAR(10) NULL,
    DateOfBirth DATE NOT NULL
)



Alter TABLE tblEmployeee
add Department VARCHAR(10);

Alter TABLE tblEmployeee
drop column Department

Alter TABLE tblEmployeee
Alter column Department VARCHAR(20);

Insert into tblEmployeee
values ('123',	'Jane'	,''	,'Zwilling','	AB123456G'	, '1985/01/01','	Commercial'
)
select * from tblEmployeee
where [EmployeeLastName]= 'Word' 

select * from tblEmployeee
where [EmployeeLastName] like 'W%'
