-- Quais pessoas não tem um cartão de crédito registrado
SELECT PP.FirstName, PP.LastName, PP.BusinessEntityID, CC.CreditCardID
FROM Person.Person AS "PP"
LEFT JOIN Sales.PersonCreditCard AS "CC" ON PP.BusinessEntityID = CC.BusinessEntityID
WHERE CC.BusinessEntityID IS NULL