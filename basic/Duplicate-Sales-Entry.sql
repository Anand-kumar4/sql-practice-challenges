--Identify Duplicate Sales Entries
--Description: Write a query to identify duplicate entries in the Sales table (same customer, same
--date, same amount).
--Hint: Use GROUP BY and HAVING.

SELECT
	CustomerID,
	SaleDate,
	SaleAmount,
	COUNT(*) AS DuplicateCount
FROM
	Sales
GROUP BY
	CustomerID,
	SaleAmount,
	SaleDate
HAVING
	COUNT(*) > 1;