-- Quero saber o nome dos funcion�rios que tem cargo de 'Design Engineer'
SELECT CONCAT(PP.FirstName,' ',PP.LastName) AS "Nome", HR.JobTitle AS "Cargo"
FROM Person.Person AS PP
INNER JOIN HumanResources.Employee AS "HR" ON PP.BusinessEntityID = HR.BusinessEntityID
WHERE HR.JobTitle LIKE '%Design Engineer%' 
-- OU
SELECT CONCAT(FirstName,' ',LastName) AS "Nome"
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID 
FROM HumanResources.Employee 
WHERE JobTitle LIKE '%Design Engineer%') 

-- Encontrar todos os endre�os que est�o no estado de 'Alberta'
SELECT AddressLine1 AS "Endere�o", City AS "Cidade", PostalCode AS "Postal Code"
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID 
FROM Person.StateProvince
WHERE Name LIKE 'Alberta')
