-- Quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName
SELECT MiddleName, COUNT(MiddleName) AS "Contagem"
FROM Person.Person
GROUP BY MiddleName;

-- Quero saber em média qual é a quantidade que cada produto é vendido na loja
SELECT ProductID, AVG(OrderQty) AS "Media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- Quero saber qual foram as 10 vendas que no total tiveram os maiores valores de venda por produto.
SELECT TOP 10 ProductID, SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(linetotal) DESC;

-- Quantos produtos e qual e quantidade média de produtos temos cadastrados nas nossas ordens de serviço
SELECT ProductID, COUNT(ProductID) AS "Produtos", AVG(OrderQty) AS "Media"
FROM Production.WorkOrder
GROUP BY ProductID