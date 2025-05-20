declare @firstname as nvarchar(20)
declare @middlename as nvarchar(20)
declare @lastname as nvarchar(20)

set @firstname = 'Sarah'
-- set @middlename = 'Jane'
set @lastname = 'Milligan'

-- select @firstname + ' ' + @middlename + ' ' + @lastname as FullName
select @firstname + IIF(@middlename IS NULL, '', @middlename + ' ') + @lastname as FullName
select @firstname + CASE WHEN @middlename IS NULL THEN '' ELSE ' ' + @middlename END + ' ' + @lastname as FullName
SELECT @firstname + coalesce(' ' + @middlename, '') + ' ' + @lastname as FULLNAME
SELECT CONCAT(@firstname, ' ', @middlename, ' ', @lastname) as FULLNAME