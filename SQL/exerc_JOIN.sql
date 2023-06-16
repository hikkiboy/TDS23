/* 
Exerc 1 
Tempo de conclusão < 1 min
*/

SELECT A.BusinessEntityID, FirstName, LastName, EmailAddress, HR.JobTitle
from person.Person A 
INNER JOIN Person.EmailAddress B ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN HumanResources.Employee HR ON HR.BusinessEntityID = A.BusinessEntityID


/* 
Exerc 2
Tempo de conclusão < 3 min
*/

SELECT B.ListPrice, B.Name, A.Name AS 'Subcategoria'  FROM Production.ProductSubcategory A
INNER JOIN Production.Product B ON A.ProductSubCategoryID = B.ProductSubcategoryID

/* 
Exerc 3
Tempo de conclusão < 3 min
*/

SELECT * from Person.PersonPhone
Select * from person.PhoneNumberType

SELECT A.BusinessEntityID, C.FirstName , B.Name as 'PhoneType' ,B.PhoneNumberTypeID,A.PhoneNumber 
FROM Person.PersonPhone A
Inner join person.PhoneNumberType B ON A.PhoneNumberTypeID = B.PhoneNumberTypeID
INNER JOIN person.Person C ON A.BusinessEntityID = C.BusinessEntityID
ORDER BY FirstName ASC

/* 
Exerc 4
Tempo de conclusão < 6 min
*/

SELECT A.BusinessEntityID, A.FirstName, C.EmailAddress, CreditCardID FROM PERSON.Person A
INNER JOIN Sales.PersonCreditCard B ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN Person.EmailAddress C ON A.BusinessEntityID = C.BusinessEntityID
UNION
SELECT A.BusinessEntityID, A.FirstName, C.EmailAddress, CreditCardID FROM PERSON.Person A
LEFT JOIN Sales.PersonCreditCard B ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN Person.EmailAddress C ON A.BusinessEntityID = C.BusinessEntityID
WHERE B.CreditCardID Is NULL
ORDER BY B.CreditCardID ASC

/* 
Exerc 5
Tempo de conclusão < 6 min
*/

SELECT FirstName from Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle LIKE '%Design%')

SELECT JobTitle, BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle LIKE '%Design%'

SELECT Firstname, B.JobTitle from Person.Person A
Inner Join HumanResources.Employee B ON A.BusinessEntityID = B.BusinessEntityID
WHERE JobTitle LIKE '%Design%'



