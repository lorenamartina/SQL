-- Quantos produtos temos cadastrados no sistema que custam mais que 1500?
SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

-- Quantos produtos vermelhos tem pre�o entre 500 e 1000?
SELECT COUNT (*)
FROM Production.Product
WHERE color = 'red' and ListPrice BETWEEN 500 AND 1000;

-- Quantos produtos cadastrados tem a palavra 'road' no nome?
SELECT COUNT (Name)
FROM Production.Product
WHERE Name LIKE '%road%';

-- Quantas pessoas temos com o sobrenome que inicia com a letra P?
SELECT COUNT (LastName)
FROM Person.Person
WHERE LastName LIKE 'P%';

-- Quantas cidades �nicas est�o cadastrados nossos clientes?
SELECT COUNT (DISTINCT City)
FROM Person.Address;

-- Quais s�o as cidades �nicas que temos cadastradas em nosso sistema?
SELECT DISTINCT City
FROM Person.Address;
