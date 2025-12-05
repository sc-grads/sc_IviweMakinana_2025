
--Number 1
SELECT *
FROM HumanResources.Employee
ORDER BY JobTitle ASC;
-- Number 2 


SELECT * 
FROM [Person].[Person] as e
ORDER BY e.LastName ;

Select * 
-- 
SELECT  FirstName,LastName,businessentityid
  FROM [AdventureWorks2022].[Person].[Person]


SELECT  ProductID,Name,ProductNumber
  FROM Production.Product where   SellStartDate is not NULL AND productline = 'T'  
  Order by name 


--
SELECT [SalesOrderID]
      ,[CustomerID]
      ,[OrderDate]
	  ,[SubTotal] 
	  , (TaxAmt / SubTotal * 100) AS TaxPercent
  FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]
  ORDER BY SubTotal
  --Number 6
  Select JobTitle 
  from [HumanResources].[Employee]
   Group by JobTitle 
  -- Number 7 
  select CustomerID,  sum(Freight) as Total_Freight from [Sales].[SalesOrderHeader]
  Group by CustomerID
  select * from [Sales].[SalesOrderHeader]

  --Number 8 
  select CustomerID , salespersonid,avg(SubTotal) as avg_subtotal ,sum(SubTotal) as sum_subtotal  from [Sales].[SalesOrderHeader]
   Group by 
   salespersonid,CustomerID
   --Number 9
   select * from Production.ProductInventory
   SELECT 
    ProductID,
    SUM(Quantity) AS TotalQuantity
	FROM Production.ProductInventory
	WHERE Shelf IN ('A', 'C', 'H')
	GROUP BY ProductID
	HAVING SUM(Quantity) > 500
	ORDER BY ProductID ASC;
	--Number 10
	SELECT 
    SUM(Quantity) * 10 AS total_quantity
	FROM Production.ProductInventory
	GROUP BY LocationID;
	--Number 11
	SELECT * FROM [Person].[Person]
	SELECT * FROM [Person].[PersonPhone]   
	SELECT p.BusinessEntityID,  p.FirstName, p.LastName, ph.PhoneNumber from [Person].[Person] p
	INNER JOIN [Person].[PersonPhone] ph 
	ON p.BusinessEntityID = ph.BusinessEntityID
	WHERE p.LastName like 'L%'
	ORDER BY p.FirstName asc 
	--Number 12
	SELECT * FROM [Sales].[SalesOrderHeader]
	SELECT SalesPersonID, customerid, SUM(SubTotal) AS sum_subtotal FROM [Sales].[SalesOrderHeader]
	WHERE SalesPersonID IS NOT NULL
	GROUP BY SalesPersonID, customerid

	--NUMBER 13
	SELECT * FROM Production.ProductInventory
	SELECT  locationid, shelf , SUM(quantity) as totalquantity  FROM Production.ProductInventory
	GROUP BY locationid, shelf;

	--Number 14
	SELECT * FROM Production.ProductInventory
	SELECT 
    locationid,
    shelf,
    SUM(quantity) AS TotalQuantity,
    SUM(SUM(quantity)) OVER (PARTITION BY locationid ORDER BY shelf) AS RunningTotal
	FROM Production.ProductInventory
	--where locationid is  not null and  shelf is not null 
	GROUP BY locationid, shelf
	WITH ROLLUP;

	--Number 15
	SELECT 
    locationid,
    SUM(quantity) AS TotalQuantity
	FROM Production.ProductInventory
	GROUP BY locationid
	WITH ROLLUP;

	-- number 16
	SELECT * FROM [Person].[Address]
	SELECT CITY,COUNT(*) AS noofemployees FROM [Person].[Address]
	GROUP BY City
	ORDER BY City Asc

	--Number 17
	SELECT * FROM [Sales].[SalesOrderHeader]  
	SELECT 
    YEAR(OrderDate) AS Year,
    SUM(TotalDue) AS 'Order Amount'
	FROM [Sales].[SalesOrderHeader]
	GROUP BY YEAR(OrderDate)
	ORDER BY YEAR(OrderDate) ASC;
	--- nUMBER 18
	SELECT 
    YEAR(OrderDate) AS Year,
    SUM(TotalDue) AS 'Order Amount'
	FROM [Sales].[SalesOrderHeader]
	WHERE YEAR (OrderDate) < 2016
	GROUP BY YEAR(OrderDate)
	ORDER BY YEAR(OrderDate) ASC;
	
	-- NUMBER 19
	SELECT * FROM  [HumanResources].[Employee] 
	SELECT * FROM  [Person].[BusinessEntityContact]
	SELECT * FROM  [Person].[ContactType]
	SELECT contacttypeid, JobTitle From [Person].[BusinessEntityContact] as Pb
	iNNER JOIN [HumanResources].[Employee] as He
	ON Pb.BusinessEntityID = He.BusinessEntityID
	WHERE JobTitle LIKE '%Manager'
    SELECT ContactTypeID, Name
	FROM [Person].[ContactType]
	WHERE Name LIKE '%Manager'
	ORDER BY Name DESC;
	----------------------------------------------------------------------------------
	--NUMBER 20
	SELECT * FROM [Person].[Person]
	SELECT * FROM
	SELECT * FROM [Person].[ContactType]
	SELECT * FROM  [HumanResources].[Employee] 
SELECT 
    p.BusinessEntityID,
    p.LastName,
    p.FirstName
FROM Person.Person AS p
INNER JOIN Person.BusinessEntityContact AS bec
    ON p.BusinessEntityID = bec.PersonID
INNER JOIN Person.ContactType AS ct
    ON bec.ContactTypeID = ct.ContactTypeID
WHERE ct.Name = 'Purchasing Manager'
ORDER BY p.LastName ASC, p.FirstName ASC;

----Number 21
SELECT 
    sp.PostalCode,
    p.LastName,
    sp.SalesYTD,
    ROW_NUMBER() OVER (
        PARTITION BY sp.PostalCode 
        ORDER BY sp.SalesYTD DESC
    ) AS RowNum
FROM Sales.SalesPerson AS s
INNER JOIN Person.Person AS p
    ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Sales.SalesTerritory AS t
    ON s.TerritoryID = t.TerritoryID
INNER JOIN Person.Address AS a
    ON p.BusinessEntityID = a.AddressID
INNER JOIN Sales.vIndividualCustomer AS sp
    ON a.PostalCode = sp.PostalCode
WHERE s.SalesYTD <> 0
ORDER BY sp.PostalCode ASC, SalesYTD DESC;

--- M





	

