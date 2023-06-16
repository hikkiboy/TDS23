DECLARE @SALARIO INT = 2500
DECLARE @IMPOSTO INT = @salario * 0.25
IF (@SALARIO <= 2500) 
	BEGIN
	print 'isento vc ein dog'
	END
ELSE
	BEGIN
	Print 'vc vai receber ' + cast(@salario - @imposto as varchar (100)) 
	END

DECLARE @Nu int = 0
DECLARE @TOTAL int = 0
WHILE @nu <= 100
BEGIN
	SET @NU += 1
	IF @Nu % 2 != 0 and @nu % 3 = 0
		BEGIN
			PRINT cast(@nu as varchar(100))	
		END
	IF @Nu % 2 = 0 
		BEGIN
			set @total = @Nu + @total
		END
END
print @total



CREATE OR ALTER PROCEDURE acharNome @letra char (1)
AS
	BEGIN
		SELECT businessentityID, FirstName, LastName
		FROM person.Person
		WHERE FirstName like @letra + '%'
		ORDER BY FirstName
	END
GO

exec acharNome 'A'


CREATE PROCEDURE Acha_ID @NumId int
AS
	BEGIN
	SELECT FirstName, EmailAddress from Campanha
	WHERE BusinessEntityID = @NumId
	END
GO

exec Acha_ID 155