create table salesstaff
(
	staffid int not null primary key,
	fName nvarchar (30) not null,
	lName nvarchar (30) not null
	)
insert into salesstaff (staffid,fName,lName) values (200,'abbas','mohmood')

insert into salesstaff (staffid,fName,lName) values (300,'Imran','Afzal'),(325,'john','vick'),(314,'james','dino')

select * from salesstaff

create table salesstaffNeew
(
	id int not null identity primary key,
	staffid int not null ,
	fName nvarchar (30) ,
	lName nvarchar (30) 
	)


	insert into salesstaffNeew (staffid,fName,lName) values (200,'abbas','mohmood')
	select * from salesstaffneew
	insert into salesstaffneew (staffid,fName,lName) values (300,'Imran','Afzal'),(325,'john','vick'),(314,'james','dino')

	create table NameOnlyTable
(
	
	fName nvarchar (30) ,
	lName nvarchar (30) 
	)
	select * from NameOnlyTable
	insert NameOnlyTable(fName,lName)
	select fName,lName from salesstaffNeew where id >= 3 

	select * into salesstaffNeew_bkp from salesstaffNeew
	select * from  salesstaffNeew_bkp
