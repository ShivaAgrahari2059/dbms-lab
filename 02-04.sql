CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'John', 'Doe', 1),
(2, 'Jane', 'Smith', 2),
(3, 'Alice', 'Johnson', 3),
(4, 'Bob', 'Brown', NULL);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Sales');

#INNER JOIN
#An INNER JOIN returns records that have matching values in both tables.

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID; 

#   LEFT JOIN
#A LEFT JOIN returns all records from the left table (Employees), and the matched records from the right table (Departments). The result is NULL from the right side if there is no match.

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

#RIGHT JOIN
#A RIGHT JOIN returns all records from the right table (Departments), and the matched records from the left table (Employees). The result is NULL from the left side when there is no match.
SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

#CROSS JOIN
#A CROSS JOIN returns the Cartesian product of the two tables, i.e., it returns all possible combinations of rows from the two tables.

SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;
