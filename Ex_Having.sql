-- Estamos querendo identificar as provícias com o maior número de cadastros no nosso sistema, então é preciso encontrar quais provícias estão registradas no banco de dados mais de 1000 vezes
SELECT StateProvinceID, COUNT(StateProvinceID) AS "Total"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- Quais produtos estão trazendo em média no mínimo 3000 em total de vendas
SELECT ProductID, AVG(LineTotal) AS "Valor Medio"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal)>3000