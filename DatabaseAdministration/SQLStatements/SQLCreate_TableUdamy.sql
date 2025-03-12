Create Table [AdventureWorks2022].[sales].[visit](
visit_id INT PRIMARY KEY IDENTITY (1,1),
first_name VARCHAR (50) Not NULL,
last_name VARCHAR (50) Not NULL,
visiterd_at DATETIME,
phone VARCHAR (50),
store_id INT Not NULL,
FOREIGN KEY (store_id)REFERENCES sales.storeNew(store_id)
)
CREATE TABLE [AdventureWorks2022].[sales].[sales.storeNew](
store_id INT not NULL,
sales INT
)
FOREIGN KEY (store_id)REFERENCES sales.storeNew(store_id)
)
SELECT * FROM [AdventureWorks2022].[sales].[visit]



 SELECT BusinessEntityID,firstname ,lastname
 into #TempPersonTable
 from [Person].[Person]
 where title = 'mr'


 SELECT BusinessEntityID,firstname ,lastname,Title
 
 from[Person].[Person]
 where title = 'mr'
 
 SELECT * from #TempPersonTable


 drop  table #TempPersonTable