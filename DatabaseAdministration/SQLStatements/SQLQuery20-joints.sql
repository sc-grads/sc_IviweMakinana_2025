SELECT TOP (1000)*
  FROM [BikeStores].[production].[products] p --no need to put as
  inner join [BikeStores].[production].[brands] b 
  on p.brand_id =b.brand_id
  inner join [BikeStores].[production].[categories] c
  on p.category_id = c.category_id