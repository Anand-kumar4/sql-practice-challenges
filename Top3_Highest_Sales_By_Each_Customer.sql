--Find Top 3 Highest Sales for Each Customer
--Description: Write a query to return the top 3 highest sales for each customer from the Sales table.

SELECT * FROM Sales;

WITH Ranked_Sales AS (
SELECT
	CustomerID,
	SaleID,
	SaleDate,
	SaleAmount,
	ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY SaleAmount DESC) AS rn
FROM
	Sales
)
SELECT
	CustomerID,
	SaleID,
	SaleDate,
	SaleAmount
FROM 
	Ranked_Sales
WHERE
	rn <= 3;