--Selfie jorge n gostei n achei feio 🙄

SELECT A.FirstName, A.HireDate,  B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART (YEAR,A.HireDate) = DATEPART(YY, B.HireDate)


Use AdventureWorks2016

-- sELECIONA MÉDIA E TAL POGGERS 

SELECT datepart(YEAR,OrderDate) as 'Mês' , AVG(TotalDue) as 'Média' FROM SALES.SalesOrderHeader
Group By datepart(YEAR,OrderDate)
Order by 1

--subselect nao sei como faz direto kkkkkk vamo tenta

SELECT ProductId, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) from Production.Product)
ORDER BY 2
