
--Delete duplicate rows of QuantityPerUnit in the products table.

WITH QPU as
(
SELECT  UnitPrice, UnitsInStock,QuantityPerUnit,
ROW_NUMBER() OVER (PARTITION BY QuantityPerUnit ORDER BY QuantityPerUnit) as RN
FROM Products
)
SELECT *
FROM QPU
WHERE RN = 1;

--Use CASE statement that creates variable Restock now when UnitsOnOrder > 50 and UnitsInStock < 20.

SELECT UnitsInStock, UnitsOnOrder,
CASE
	WHEN UnitsOnOrder >50 AND UnitsInStock <20 THEN 'Restock Now'
END as WhenToRestock
FROM Products;

-- Use CASE statement that creates variables, Restock now, Restock Next Week, Restock Next Month, Restock in 6 Months, Ask Manager.

SELECT QuantityPerUnit,
CASE
	WHEN UnitsOnOrder > 50 AND UnitsInStock < 20 THEN 'Restock Now'
	WHEN UnitsOnOrder BETWEEN 30 and 40 AND UnitsInStock < 50 THEN 'Restock Next Week'
	WHEN UnitsOnOrder < 30 and UnitsInStock < 50 THEN 'Restock Next Month'
	WHEN UnitsOnOrder <5 and UnitsInStock >= 50 THEN 'Restock in 6 Months'
	ELSE 'Ask Manager'
END as WhentoRestock
FROM Products;

--Deal with NULL Values.

SELECT CustomerID, ContactName, City,
ISNULL(Fax, 'No Fax') as fax , 
ISNULL (Region, 'No Region') as Region
FROM Customers;

