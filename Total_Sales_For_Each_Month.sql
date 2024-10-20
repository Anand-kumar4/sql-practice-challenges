--6. Calculate the Total Sales for Each Month
--Description: Write a query to calculate the total sales amount for each month.

SELECT * FROM Sales;

SELECT 
	SUM(SaleAmount) AS TotalSales,
	FORMAT(SaleDate, 'yyyy-MM') AS Month
FROM
	Sales
GROUP BY
	FORMAT(SaleDate, 'yyyy-MM')
ORDER BY
	Month;

SELECT 
    YEAR(SaleDate) AS Year,
    MONTH(SaleDate) AS Month,
    SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
ORDER BY Year, Month;


