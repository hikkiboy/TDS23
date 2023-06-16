SELECT * INTO Campanha from Dbo.Nome_e_Email
select * from campanha

ALTER TABLE campanha 
add Status varchar(20)

declare @contador as int = 0
declare @total as int = 0

--Select @total = count(*) from Campanha
--print @total

WHILE @contador <= @total
BEGIN 

UPDATE campanha
set SITUACAO = 'enviado'
where FirstName LIKE ('E%') and BusinessEntityID = @contador
set @contador += 1
END