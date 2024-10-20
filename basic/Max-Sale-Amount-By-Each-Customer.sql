--Find the Maximum Sale Amount by Each Customer
--Description: Write a query to find the maximum sale amount for each customer.


SELECT * FROM Sales;

SELECT
	CustomerID,
	MAX(SaleAmount) AS MaxSales
FROM
	Sales
GROUP BY
	CustomerID;