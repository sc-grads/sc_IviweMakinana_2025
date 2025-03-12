use [AdventureWorks2022]
go
select * from [Person].[Address]
select addressid,city,modifieddate from [Person].[Address]
select top 10 * from [Person].[Address]

select * from [Person].[Address] Where PostalCode = '98011'
select * from [Person].[Address] Where PostalCode != '98011'
select * from [Person].[Address] Where PostalCode <> '98011'
select count ( *) from [Person].[Address] Where PostalCode = '98011'
select * from [Person].[Address] Where modifieddate  <= '2009-02-06 00:00:00.000'
select * from [Person].[Address] Where addressline1 like  '%WO%'
select * from [HumanResources].[EmployeePayHistory]
select max (rate) as Paycheck from [HumanResources].[EmployeePayHistory]
select min (rate) as Paychecks from [HumanResources].[EmployeePayHistory]
select * from [Production].[ProductCostHistory] 
select * from [Production].[ProductCostHistory] where StartDate = ' 2013-05-30 00:00:00.000' and StandardCost >= 200 