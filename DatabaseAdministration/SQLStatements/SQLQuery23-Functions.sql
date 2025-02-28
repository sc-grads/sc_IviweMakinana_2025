SELECT TOP (1000) 
      sum( list_price) as sum,
    avg(list_price)as Avg,
	max(list_price)as max,
	min(list_price) as min
  FROM [BikeStores].[sales].[order_items]
