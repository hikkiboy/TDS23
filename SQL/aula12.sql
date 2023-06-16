CREATE PROCEDURE voltanome @numID int, @nomeCompleto nvarchar(255) Output
as
begin
SET @nomeCompleto = (SELECT (firstName + ' '+ LastName) as FULLname 
									from person.person 
									WHERE BusinessEntityID = @numID)
RETURN
end
go

DECLARE @nomeCompleto Nvarchar(676)

execute voltanome @numid = 1, @nomeCompleto = @nomeCompleto OUTPUT 
PRINT @nomecompleto