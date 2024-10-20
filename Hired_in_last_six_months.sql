--1. Find the Employees Hired in the Last 6 Months
--Description: Write a query to return employees who were hired in the last 6 months.

SELECT * FROM Employees;

SELECT
	EmployeeID,
	FirstName,
	LastName
FROM
	Employees
WHERE
	HireDate >= DATEADD(MONTH, -6, GETDATE());

