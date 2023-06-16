INSERT INTO Tabela_B (ID, Nome)
VALUES (1, 'Espada')

INSERT INTO Tabela_B (ID, Nome)
VALUES (2, 'Robo')

INSERT INTO Tabela_B (ID, Nome)
VALUES (3, 'Mario')

INSERT INTO Tabela_B (ID, Nome)
VALUES (4, 'Samurai')

SELECT * FROM TABELA_B


--inner e jo�o

SELECT * FROM Tabela_B  A
INNER JOIN tabela_A B
on A.Nome = B.Nome

-- Fluor walter jo�o

SELECT * FROM Tabela_A A
FULL OUTER JOIN tabela_B B
on A.Nome = B.Nome


-- Lek Jo�o

SELECT * FROM Tabela_A  A
LEFT JOIN tabela_B B
on A.Nome = B.Nome
WHERE B.ID IS Null


-- Raichi Jo�o

SELECT * FROM Tabela_A  A
RIGHT JOIN tabela_B B
on A.Nome = B.Nome

--Un�o

Use AdventureWorks2016

SELECT * FROM Production.Product
WHERE Name Like '%Chai%'
UNION
SELECT * FROM Production.Product
WHERE Name Like '%Decal%'
Order by Name Desc


--Sub sebect
SELECT AVG(ListPrice) FROM Production.Product

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) From Production.Product)
