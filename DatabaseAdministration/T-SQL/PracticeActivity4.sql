select system_type_id, column_id, system_type_id * 1.00000 / column_id as Calculation
from sys.all_columns
select system_type_id, column_id,floor( system_type_id * 1.00000 / column_id ) as Calculation
from sys.all_columns
select system_type_id, column_id,ceiling ( system_type_id * 1.00000 / column_id ) as Calculation
from sys.all_columns
select system_type_id, column_id,Round ( system_type_id * 1.00000 / column_id,1 ) as Calculation
from sys.all_columns
select system_type_id, column_id,try_Convert ( tinyint, system_type_id *2) as Calculation
from sys.all_columns