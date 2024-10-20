--2. Find the Department with the Highest Total Salary
--Description: Write a query to find the department that has the highest total salary for its employees.

SELECT * FROM Employees;

WITH DepartmentSalary AS 
(
	SELECT 
		Department,
		SUM(Salary) as TOTAL_SAL_BY_DEPT,
		ROW_NUMBER() OVER(Order By SUM(Salary) DESC) AS rn
	FROM
		Employees
	GROUP BY
		Department
)
SELECT 
	Department,
	TOTAL_SAL_BY_DEPT
FROM 
	DepartmentSalary 
WHERE 
	rn = 1;