-- Remove Duplicates using CTEs and ROW_NUMBER ()

WITH OrdersTable as (
SELECT CustomerID, ShipName, ShipAddress, ShipPostalCode, ShipCountry,
ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY  CustomerID) as RN
FROM orders
)
SELECT CustomerID, ShipAddress,ShipCountry,ShipName,ShipPostalCode 
FROM OrdersTable
WHERE RN = 1;

-- Create Categories about Freight and filter data using CTE

WITH ct as
(
SELECT Freight, 
CASE
	WHEN Freight < 50 THEN 'Low Charge' 
	WHEN Freight BETWEEN 51 AND 100 THEN 'Medium Charge' 
	WHEN Freight BETWEEN 101 AND 200 THEN 'High Charge' 
	ELSE 'Expensive' 
END as Charge
FROM Orders
)
SELECT Freight,Charge 
FROM ct
WHERE Charge = 'Low Charge';

--Replace Null values in Region column

SELECT CustomerID, ContactName, City,ISNULL (Region, 'No Region') as region
FROM Customers


