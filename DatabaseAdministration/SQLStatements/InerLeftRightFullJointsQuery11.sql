select * from [dbo].[Student]
go
select * from[dbo].[Coures]
-- Selects all columns from both the "student" (s) and "courses" (c) tables



SELECT * 
FROM student s  -- "student" table is given an alias 's' for easier reference
INNER JOIN coures c  -- "courses" table is given an alias 'c'
ON s.rollno = c.rollno;  -- Joins the tables where "rollno" matches in both tables

select s.rollno, s.studentname, c.couresid from student s
join coures c
on  s.rollno = c.rollno

select * from student s
left join coures c
on  s.rollno = c.rollno

select s.rollno, s.studentname, c.couresid from student s
left join coures c
on  s.rollno = c.rollno

select s.rollno, s.studentname, c.couresid from student s
right join coures c
on  s.rollno = c.rollno

select s.rollno, s.studentname, c.couresid from student s
full join coures c
on  s.rollno = c.rollno