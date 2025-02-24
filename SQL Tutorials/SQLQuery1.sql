ALTER DATABASE BikeStaores
set single_user --Restrictted_user
with rollback immediate
go 
drop database BikeStaores;
go
