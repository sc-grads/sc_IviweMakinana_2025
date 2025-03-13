select 
firstname + ''+ Lastname  as Fullname,
territoryName,
territorygroup,
salesQuota,
salesYTD,
SalesLastYear
into SalesStaff
from sales.vsalesperson 


select * from [Sales].[vSalesPerson]
drop  table SalesStaff

select * from SalesStaff

update SalesStaff set salesQuota = 50000
update SalesStaff set salesQuota = salesQuota + 150000
update SalesStaff set salesQuota = salesQuota + 150000, salesYTD=400,saleslastyear=saleslastyear*1.5 

update SalesStaff set territoryName = 'UK' where territoryName = 'United Kingdom'
update SalesStaff set salesQuota = s.salesQuota
from salesstaff ss
inner join sales.vSalesPerson sp
on ss.fullname =( sp.FirstName +''+sp.LastName)


UPDATE ss 
SET ss.salesQuota = sp.salesQuota
FROM salesstaff ss
INNER JOIN sales.vSalesPerson sp 
ON ss.fullname = (sp.FirstName + ' ' + sp.LastName);
