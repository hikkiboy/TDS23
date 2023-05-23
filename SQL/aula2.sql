--usar o pubs

USE pubs

--verificar o tal do ngc la 

SELECT * FROM sys.tables

--seclecionar os autrores

SELECT * FROM authors

--seclecionar o primer nome e telepone

SELECT au_fname, phone FROM authors

--Ordernar as paradinhas pra arriba

SELECT au_fname FROM authors 
ORDER BY au_fname ASC

--orderna as paradinhas para abajo

SELECT au_fname FROM authors 
ORDER BY au_fname DESC

--selecciona o ngc usando o top que da aql limitada no query vapovapo

SELECT TOP 5 qty,title_id FROM dbo.sales ORDER BY qty Desc

--iNNER JOIN prof n explicou isso ainda mas eu quis fazer sei la

SELECT TOP 5 qty, title FROM sales A
INNER JOIN titles B ON B.title_id = A.title_id
ORDER BY qty Desc

--Where

SELECT * FROM authors
WHERE state = 'ca' and contract = 0
order by city

--SUM 

SELECT SUM(qty) AS Soma FROM sales as SOMA

--LIKE 

SELECT au_fname FROM authors
WHERE au_fname LIKE 'a%'

--INSERT 

INSERT INTO authors (au_id,au_lname, au_fname, phone, address,city, state,zip, contract) VALUES ('172-32-1177','Silva','João','111111111111','Rua dos sem braço','sei la', 'es', '94025', '1')

--up & date

UPDATE authors SET au_fname = 'Viciniu' WHERE au_id = '172-32-1177'

--DELETE (CUIDADO MUITO PERIGOSO 😮😮😮😮)

DELETE FROM authors WHERE au_id = '172-32-1177'

-- seleciona
Select * from authors where au_id = '172-32-1177'




