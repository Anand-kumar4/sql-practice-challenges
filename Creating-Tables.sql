use [interview-prep];

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'HR', 60000, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 75000, '2019-03-22'),
(3, 'Sam', 'Brown', 'IT', 80000, '2021-07-01'),
(4, 'Chris', 'Davis', 'Finance', 72000, '2018-12-11'),
(5, 'Pat', 'Taylor', 'HR', 61000, '2020-10-03');

SELECT * FROM Employees;

