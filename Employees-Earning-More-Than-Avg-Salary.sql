--4. Find Employees Earning More than the Average Salary
--Description: Write a query to find all employees whose salary is greater than the average salary in
--the company.

SELECT * FROM Employees;

SELECT
	*
FROM
	Employees
WHERE
	Salary > (
		SELECT
			AVG(Salary)
		FROM 
			Employees
		);

WITH Employee_Sal AS
(
	SELECT
		AVG(Salary) AS AVG_SAL
	FROM
		Employees
	)
SELECT 
	*
FROM
	Employees
WHERE
	Salary > (
				SELECT
					AVG_SAL
				FROM
					Employee_Sal);
