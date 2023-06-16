--eu n sei oq eu to fazendo aq hj slckkkkkkkkkkkkkkkkkkkkkkkkkkkk

SELECT Count(*) AS Numero_de_coisa
FROM Production.Product
WHERE Color = 'Red' 
and ListPrice Between 500 and 1000

-- 2 - poggers 😮

SELECT Count(*) as poggers
FROM Production.Product
WHERE  Name like '%Road%'

-- n ouvi oq era pra fazer nesse kkkkkkk

SELECT AVg(LineTotal)
FROM Sales.SalesOrderDetail


-- gruop e by

SELECT Count(FirstName) as qntd ,FirstName 
FROM PERSON.Person
Group by FirstName
order by qntd ASC

SELECT SpecialOfferID, SUM(UnitPrice) as Lucro  
FROM Sales.SalesOrderDetail
Group by SpecialOfferID
Order by Lucro DESC

-- des a fi 😁😁😁😁

SELECT B.Name,A.ProductID , Count(A.OrderQty) As 'Numero de venda' 
FROM Sales.SalesOrderDetail A
Inner join Production.Product B ON A.ProductID = B.ProductID
Group BY A.ProductID, B.Name
Order By Count(OrderQty) DESC

-- desafio mt hard 

SELECT Production.Product.Color, AVG(ListPrice) as 'Preço medio'
FROM Production.Product
WHERE Color = 'Silver' or Color = 'Silver/Black'
Group BY Color

--Desafio ainda main hard😶😑😐🤨🤔😁

SELECT MiddleName, COUNT(middlename) as 'numero do meio' 
from Person.Person
Group by MiddleName
Order by COUNT(middlename) asc


--seila bixo

SELECT ProductID, AVG(UnitPrice) 
FROM Sales.SalesOrderDetail
Group by ProductID

--sei la 2 pog

SELECT TOP 10 ProductID, AVG(LineTotal) 
FROM Sales.SalesOrderDetail
Group by ProductID
ORDER BY AVG(UnitPrice) Desc

--sei la 3 no way

SELECT Count(ProductID) as 'QNTD de produto', AVG(OrderQty) as 'Media', ProductID 
from Production.WorkOrder
Group By ProductID

-- HABING 

SELECT FirstName, Count(FirstName) 
from Person.Person
WHERE FirstName like 'a%'
Group by FirstName
Having Count(FirstName) > 10

-- desafio de hav1

SELECT ProductID, SUM(LineTotal) as 'numero de ngc la seila po' 
from Sales.SalesOrderDetail
Group BY ProductID
Having SUM(LineTotal) Between 162000 and 500000

-- desafio de hav2

SELECT ProductID, AVG(LineTotal) as 'Media de sales😈'
from Sales.SalesOrderDetail
Group by ProductID
Having AVG(LineTotal) < 1000
Order by avg(LineTotal) ASC