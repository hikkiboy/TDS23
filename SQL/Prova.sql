CREATE DATABASE DB_Moveis_Imoveis
use DB_Moveis_Imoveis

--CRIANDO TABELA CLIENTE
Create TABLE CLIENTE (
	id_Cliente INT NOT NULL primary key,
	nome varchar(255), 
	cpf varchar(255),
	email varchar(255),
	celular varchar(11),
	UF varchar(2)
)

--CRIANDO TABELA MOVEIS
CREATE TABLE MOVEIS(
	ID_PRODUTO int identity (1,1) NOT Null primary key,
	VALOR int,
	DESCRICAO varchar(255),
	Nome_Movel varchar(20),
	MATERIAL varchar(40),
)


--CRIANDO TABELA MOVIMENTO
CREATE TABLE MOVIMENTO(
	ID_MOV int NOT NULL,
	id_produto int,
	id_cliente int, 
	quantidade int,
)

--Inserindo na tabela cliente

SELECT * FROM CLIENTE

INSERT INTO CLIENTE (nome,id_Cliente,cpf,email,celular,UF)
VALUES ('Joao Pedro', 6 , '123-123-123-22', 'joaobrabo@gmail.com', '933431234', 'SP')
INSERT INTO CLIENTE (nome, id_Cliente ,cpf,email,celular,UF)
VALUES ('Nezzi', 4 , '144-333-009-12', 'NezziMaisInsano@gmail.com', '922571233', 'SP')
INSERT INTO CLIENTE (nome,id_Cliente,cpf,email,celular,UF)
VALUES ('Vinicius',7, '144-225-667-11', 'ViniciusDev@gmail.com', '999916672', 'ES')
INSERT INTO CLIENTE (nome,id_Cliente,cpf,email,celular,UF)
VALUES ('Joao Martinez', 1, '224-556-997-31', 'JoaoSemMao@gmail.com', '956545564', 'MG')
INSERT INTO CLIENTE (nome,id_Cliente,cpf,email,celular,UF)
VALUES ('Paulo', 5 , '224-555-441-44', 'paulomaispaulo@gmail.com', '99882-4435', 'SP')

--Inserindo na tabela Moveis
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (30, 'Cadeira confortavel assento de camurça preechido com penas de ganso','Cadeira Ganso', 'Madeira' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (120, 'Cama de casal','Cama Casada', 'Madeira' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (300, 'Sofá mais confortavel do mundo','Sofá Barato', 'Camurça' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (400, 'Cadeira GAMER INSANA MUITO GAMER MESMO GAMES','Cadeira GAMER', 'GAMER' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (600, 'Mesa especifica pra almoçar','Mesa de almoçar', 'Madeira' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (700, 'Mesa especifica pra jantar','Mesa de jantar', 'Madeira' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (999, 'cadeira mais cara do mundo','Cadeira cara', 'camurça' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (1, 'cadeira mais barata do mundo','Cadeira Barata', 'plastico' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (4000, 'Sofá feio demais n compra isso n','Sofá feio', 'Feio' )
INSERT INTO MOVEIS (VALOR, DESCRICAO,Nome_Movel, MATERIAL)
VALUES (300, 'Cama pequena pra uma pessoa só bom pra solteiros','Cama solteira', 'Solidão' )


--INSERINDO NA MOVIMENTO 

SELECT * FROM MOVIMENTO

INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('1', '5', '6', '3');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('1', '4', '6', '4');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('1', '9', '6', '4');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('2', '10', '1', '3');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('3', '10', '7', '3');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('3', '6', '7', '11');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('3', '8', '7', '4');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('3', '9', '7', '5');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('3', '3', '7', '3');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('4', '5', '6', '10');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('4', '3', '6', '2');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '10', '4', '9');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '9', '4', '4');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '8', '4', '5');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '7', '4', '6');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '6', '4', '3');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '5', '4', '2');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '4', '4', '10');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade)
VALUES ('5', '3', '4', '3');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '2', '4', '1');
INSERT INTO MOVIMENTO (id_mov, id_produto, id_cliente, quantidade) 
VALUES ('5', '1', '4', '3');

-- QUESTÃO 6 :

SELECT A.ID_MOV, B.Nome_Movel,B.DESCRICAO,B.VALOR, quantidade, quantidade * VALOR as 'Subtotal', C.NOME 
FROM MOVIMENTO as A
INNER JOIN MOVEIS B on A.ID_PRoduto = B.id_produto
INNER JOIN CLIENTE C on C.id_Cliente = A.id_cliente
Order by Subtotal desc	


-- QUESTÃO 7 :
SELECT COUNT(*) as 'VendasRepitidas', A.id_produto,B.Nome_MOvel from MOVIMENTO A
INNER JOIN MOVEIS B on A.ID_PRODUTO = B.id_produto
Group by A.id_produto, B.Nome_Movel
order by VendasRepitidas desc

--QUESTÃO 8 :
SELECT A.id_produto, (sum(quantidade) + COUNT(A.id_produto))  as 'Venda Final' from MOVIMENTO A
INNER JOIN MOVEIS B on A.ID_PRODUTO = B.id_produto
Group by A.id_produto
order by A.id_produto  desc

-- não consegui fazer ele considerar que certas repetições tem valores diferentes desculpa !!


--QUESTÃO 9 :

CREATE or alter VIEW Venda_Final as
SELECT A.id_produto, quantidade + Count(*) as 'Venda Final', quantidade from MOVIMENTO A
INNER JOIN MOVEIS B on A.ID_PRODUTO = B.id_produto
Group by A.id_produto, B.Nome_Movel, quantidade

--RESPOSTA :

SELECT AVG([Venda Final] * VALOR) as 'Media de vendas', B.nome_movel  FROM Venda_Final A
INNER JOIN MOVEIS B on A.id_produto = B.id_produto
group by A.id_produto, B.Nome_Movel

--QUESTÃO 10: 
CREATE or alter PROCEDURE TotalMov @IdMov int as
SELECT Sum(Quantidade) as TotalGeral from MOVIMENTO
WHERE id_mov = @IdMov
	
EXECUTE TotalMov '1'

--QUESTÃO 11 

DECLARE @num int = 9
PRINT @NUM
while @num <= 100
BEGIN
SET @num = @num*3
print @num
END