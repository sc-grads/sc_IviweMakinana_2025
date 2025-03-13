select * from salesstaff

truncate  table salesstaff

create table employeenew (
id int identity (1,1) not null,
employeename nvarchar(50) not null
)

select * from  employeenew
insert into employeenew
(employeename)
values ('Abbas'),('Imran'),('dino'),('james')

delete from employeenew -- it dose not delete identity velues 

truncate table  employeenew -- it delete the idenity veluse 