create table  SQLBeckupRestorTest (
	ID Int Not null  Primary key,
	loginname varchar (100) not null,
	logindate datetime not null Default getdate ()
	)
	go 
	select * from  SQLBeckupRestorTest
	insert into  SQLBeckupRestorTest (id,loginname) values (1,'test1')
	insert into  SQLBeckupRestorTest (id,loginname) values (2,'test2')
	insert into  SQLBeckupRestorTest (id,loginname) values (3,'test3')
	insert into  SQLBeckupRestorTest (id,loginname) values (4,'test4')
	insert into  SQLBeckupRestorTest (id,loginname) values (5,'test5')

	-- Full Back Up 5 Row
	insert into  SQLBeckupRestorTest (id,loginname) values (6,'test6')
	insert into  SQLBeckupRestorTest (id,loginname) values (7,'test7')
	insert into  SQLBeckupRestorTest (id,loginname) values (8,'test8')
	insert into  SQLBeckupRestorTest (id,loginname) values (9,'test9')
	insert into  SQLBeckupRestorTest (id,loginname) values (10,'test10')