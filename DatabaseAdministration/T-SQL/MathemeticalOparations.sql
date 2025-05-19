declare @myvar as numeric (7,2) =3

select Power (@myvar,3) as MyVariable
select Square (@myvar) as MyVariable
select Power (@myvar,0.5) as MyVariable
select SQRT (@myvar) as MyVariable
go 

declare @myvar as numeric (7,2) =-3.7
select Floor (@myvar)
select ceiling(@myvar)
select Round (@myvar,0)
go 

select pi() as Mypi
select exp(1) as e

declare @myvar as numeric (7,2) =-456
select ABS (@myvar), sign (@myvar) 
go 

select rand (5678)