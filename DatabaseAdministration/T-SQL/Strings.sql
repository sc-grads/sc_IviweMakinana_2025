-- First Snippet
DECLARE @chrMyCharacters as varchar(10)
set @chrMyCharacters = 'hell�'
select @chrMyCharacters as myString, len(@chrMyCharacters) as myLength, DATALENGTH(@chrMyCharacters) as myDataLength
go

-- Second Snippet
DECLARE @chrMyCharacters as varchar(10)
set @chrMyCharacters = N'hell�&&'
select @chrMyCharacters as myString, len(@chrMyCharacters) as myLength, DATALENGTH(@chrMyCharacters) as myDataLength