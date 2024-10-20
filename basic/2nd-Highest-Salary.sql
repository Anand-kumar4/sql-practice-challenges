--Find the Second Highest Salary
--Description: Write a query to find the employee with the second highest salary.

SELECT * FROM Employees;


WITH RankedSalaries AS 
(
	SELECT
		Salary,
		ROW_NUMBER() OVER(ORDER BY Salary DESC) AS rn
	FROM
		Employees
)

SELECT
	Salary
FROM
	RankedSalaries
WHERE 
	rn = 2;