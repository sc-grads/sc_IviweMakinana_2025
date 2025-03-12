

select * from [HumanResources].[EmployeePayHistory]
where BusinessEntityID in (select BusinessEntityID  from [HumanResources].[EmployeePayHistory] where rate > 60)

select * from [HumanResources].[EmployeePayHistory]
where BusinessEntityID in (select BusinessEntityID  from [HumanResources].[EmployeePayHistory] where rate =39.06)

select * from [Production].[Product]
where ProductID in (select ProductID  from [Production].[ProductInventory] where Quantity >300)