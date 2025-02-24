SELECT TOP (1000) *
  FROM [BikeStores].[sales].[stores] as s
  left outer join [BikeStores].[sales].[staffs] st
  on s.store_id = st.store_id
