DECLARE @idade INT;
SET @idade = 33;
print @idade

DECLARE @NomeTeste varchar (20)
SET @NomeTeste = 'marcos nunes'
PRINT 'Aluno que mais veio na aula ' + @NomeTeste 


DECLARE @N1 INT
SET @N1  = 10
DECLARE @N2 INT
SET @N2 = 20


DECLARE @NUMERO INT = 10;
DECLARE @TEXTO VARCHAR(10);



PRINT 'A soma de ' + CAST(@NUMERO AS VARCHAR(10)) + ' mais ' + 
CAST(@NUMERO AS VARCHAR(10)) + ' é ' + 
CAST (@numero + @numero AS varchar(100))

SET @TEXTO = cast(@numero as varchar(10));

SELECT CAST ('2021-01-01' AS DATE)

select cast (3.14159 as decimal (5,2))


-- desafio e 1 e tal pog

DECLARE @Gringo VARCHAR(10) = 'Mike'
DECLARE @temp float = 18
DECLARE @fahn float = (@temp * 9/5) + 32
PRINT @GRINGO + ' a temperatura é: ' + cast (@fahn as varchar(10)) + ' Fahrenheit'

-- desafrio brrr 🥶🥶

DECLARE @Ida int = 6570
declare @idaAno int = 6570 / 365
DECLARE @nome varchar(50) = 'joão joão da silva'
DECLARE @dias int = 365
print @nome + ' você já passou ' + 
	CAST (@IdaAno as varchar (10)) +
' Anos e ' 
+	CAST(@IdaAno * @DIAS as varchar(1000)) + 
' dias na terra pog ' 
+ ' e mais ou menos ' 
+	CAST(@IdaAno *12 as varchar(50)) + 
' meses'

DECLARE @valorUSER int 
SET @valorUser = 13

IF (@valorUser % 2 = 0)
PRINT ('vapovapo')
ELSE
PRINT('falta vapo')

-- desafio envolvendo loops e tal sei la poggers

Declare @contas as int = 1
WHILE @contas  <= 100
begin
SET @CONTAS += 1
	If (@contas % 2 = 0)
	Print 'contador : ' + cast(@contas as varchar(10)) + (' Numero par')
	ELSE
	Print 'contador : ' +cast(@contas as varchar(10)) + (' Numero Impar')
end

-- outro desafio

Declare @contas as int = 1
DECLARE @TOTAL as int = 0
WHILE @contas  <= 100
BEGIN
SET @CONTAS += 1
	If (@contas % 2 <> 0) and (@contas % 3 = 0)
	Print 'contador : ' + cast(@contas as varchar(10))
	if (@contas % 2 <> 0) and (@contas % 3 = 0)
SET @total = @total + @CONTAS
END
print 'total : ' + cast(@total as varchar(10))


declare @nu as int = 233
WHILE @nu <= 496
begin
IF(@nu >= 300 and @Nu <= 400)
	begin
		set @nu += 5
		print @nu
	end
else
	begin
		set @nu += 3
		print @nu
	end
end

