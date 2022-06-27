-- Gerar uma tabela com as variáveis: BusinessEntityID, FirstName, LastName, EmailAddress
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person AS p
INNER JOIN Person.EmailAddress AS pe on p.BusinessEntityID=pe.BusinessEntityID

-- Gerar tabela com os nomes dos produtos e as informações de suas subcategorias: ListPrice, Nome do produto, nome da subcategoria
SELECT P.ListPrice AS "Lista de Preços", p.Name AS "Nome", sub.Name AS "Nome da Subcategoria"
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS sub ON P.ProductSubcategoryID = sub.ProductSubcategoryID

-- Gerar uma tabela com as variáveis: BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber
SELECT PP.BusinessEntityID, PN.Name, PP.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PhoneNumberType AS PN
INNER JOIN Person.PersonPhone AS PP ON PN.PhoneNumberTypeID = PP.PhoneNumberTypeID

-- Gerar uma tabela com: AddressId, City, StateProvinceId, Name
SELECT PA.AddressID, PA.City, SP.StateProvinceID, SP.Name
FROM Person.StateProvince AS SP
INNER JOIN Person.Address AS PA ON PA.StateProvinceID = SP.StateProvinceID
