-- Estamos querendo identificar as prov�cias com o maior n�mero de cadastros no nosso sistema, ent�o � preciso encontrar quais prov�cias est�o registradas no banco de dados mais de 1000 vezes
SELECT StateProvinceID, COUNT(StateProvinceID) AS "Total"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- Quais produtos est�o trazendo em m�dia no m�nimo 3000 em total de vendas
SELECT ProductID, AVG(LineTotal) AS "Valor Medio"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal)>3000