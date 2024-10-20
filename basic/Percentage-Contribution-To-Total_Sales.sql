--Calculate Percentage Contribution to Total Sales
--Description: Write a query to calculate the percentage contribution of each sale to the total sales
--amount.
--Hint: Use window functions like SUM() and calculate percentages.


SELECT * FROM Sales;

SELECT
	SaleID,
	CustomerID,
	SaleDate,
	SaleAmount,
	(SaleAmount * 100) / SUM(SaleAmount) OVER() AS PercentageContribution
FROM
	Sales;