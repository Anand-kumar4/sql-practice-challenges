--Calculate a 3-Month Moving Average of Sales
--Description: Write a query to calculate the 3-month moving average of sales for each month.

SELECT * FROM Sales;

WITH MonthlySales AS
(
	SELECT
		YEAR(SaleDate) AS Year,
		MONTH(SaleDate) AS Month,
		SUM(SaleAmount) AS TotalSales
	FROM
		Sales
	GROUP BY
		YEAR(SaleDate),
		MONTH(SaleDate)
)
SELECT
	Year,
	Month,
	TotalSales,
	AVG(TotalSales) OVER(ORDER BY Year, Month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS ThreeMonthMovingAvg
FROM
	MonthlySales
ORDER BY
	Year,
	Month;

