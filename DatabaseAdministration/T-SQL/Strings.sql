-- First Snippet
DECLARE @chrMyCharacters as varchar(10)
set @chrMyCharacters = 'helló'
select @chrMyCharacters as myString, len(@chrMyCharacters) as myLength, DATALENGTH(@chrMyCharacters) as myDataLength
go

-- Second Snippet
DECLARE @chrMyCharacters as varchar(10)
set @chrMyCharacters = N'helló&&'
select @chrMyCharacters as myString, len(@chrMyCharacters) as myLength, DATALENGTH(@chrMyCharacters) as myDataLength