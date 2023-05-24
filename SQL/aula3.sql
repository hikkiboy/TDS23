--OR STATEMENT poggies 

SELect * from person.Person
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23

--negocio 


SELECT * FROM Production.Product
WHERE Weight > 500 and Weight <= 700

--casada ?

SELECT HumanResources.Employee.JobTitle, 
HumanResources.Employee.MaritalStatus, 
HumanResources.Employee.SalariedFlag from 
HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1

--veio.

SELECT * FROM HumanResources.Employee
WHERE BirthDate <= '01-01-1982'
AND SalariedFlag = 1

--n sei oq chamar esse aq
SELECT FirstName, LastName, EmailAddress FROM Person.Person as A
INNER JOIN Person.EmailAddress B ON A.BusinessEntityID = B.BusinessEntityID
WHERE FirstName = 'Peter' and LastName = 'Krebs'


SELECT person.person.FirstName, person.person.LastName, EmailAddress.EmailAddress
FROM Person.Person, person.EmailAddress WHERE Person.BusinessEntityID = EmailAddress.BusinessEntityID
AND person.BusinessEntityID = 26

-- qnts produto

SELECT Count(*) from Production.Product

-- quais 

SELECT DISTINCT name FROM Production.Product

--between

SELECT ListPrice from Production.Product
WHERE Production.Product.ListPrice Between 1000 and 1500 

SELECT JobTitle, HireDate from HumanResources.Employee
WHERE HumanResources.Employee.HireDate Between '01-01-2009' and '01-01-2010'

-- IN

SELECT * from person.Person
WHERE BusinessEntityID IN (5,111,23)

--LIKE

SELECT * from person.Person
WHERE FirstName LIKE 'R%e_'

--DESAFIO HARD TA

SELECT Count(ListPrice) from production.product
where ListPrice > 1500

--DESAFIO PARTE 2

SELECT Count(*) from Person.Person
Where LastName LIKE 'P%'

--DESAFIO PARTE 3

SELECT  Count(DISTINCT City) FROM Person.Address

-- coisa que eu fiz aqui que o prf n falou sobre e tal 😈
SELECT BirthDate from HumanResources.Employee
WHERE  DATEDIFF( YY , BirthDate , Getdate()) >= 40


Print DATEDIFF( YY , BirthDate , Getdate())
