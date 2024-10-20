use [interview-prep];


-- Creating Employee Table and Inserting Data

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

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES(6, 'Mat', 'Murdock', 'Legal', 100000, '2024-08-15');

SELECT * FROM Employees;


-- Creating sales table and inserting data into it.

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, CustomerID, SaleDate, SaleAmount)
VALUES
(1, 101, '2023-01-01', 500.00),
(2, 102, '2023-02-15', 300.00),
(3, 103, '2023-03-05', 450.00),
(4, 101, '2023-04-10', 700.00),
(5, 104, '2023-05-20', 650.00);

SELECT * FROM sales;