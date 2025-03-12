
select * from[dbo].[Employee]
select * from [dbo].[Sales]

select * from [dbo].[Employee] e
join [dbo].[Sales] s
on e.empname = s.empname


select * from [dbo].[Employee] e
join [dbo].[Sales] s
on e.empId = s.empid

select  e.empid,e.empname,s.salesnimber,s.itermsold from [dbo].[Employee] e
join [dbo].[Sales] s
on e.empId = s.empid
order by e.empid

SELECT 
    COUNT(s.SalesNimber) AS NoofSales, 
    e.empid, 
    e.empname 
FROM [dbo].[Employee] e
JOIN [dbo].[Sales] s ON e.empId = s.empid
GROUP BY e.empid, e.empname
ORDER BY e.empid, e.empname;
