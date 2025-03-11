CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    EmployeeID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Departments VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago');

INSERT INTO Employees VALUES
(101, 'Alice', 1, 60000, '2020-06-15'),
(102, 'Bob', 2, 75000, '2019-08-01'),
(103, 'Charlie', 2, 80000, '2018-09-10'),
(104, 'David', 3, 90000, '2017-05-22');

INSERT INTO Orders VALUES
(1, 101, '2023-01-10', 500.00),
(2, 102, '2023-02-15', 1200.00),
(3, 103, '2023-03-20', 900.00),
(4, 104, '2023-04-25', 1500.00);

--1. Retrieve employees with a salary greater than the average salary.
--2. Get the total number of employees in each department.
--3. Retrieve orders placed in the last 6 months.
--4. Find employees who have not placed any orders.
--5. Get the highest, lowest, and average salary per department.
--6. List all orders along with customer names.
--7. Find employees whose names start with 'A'.
--8. Get the second highest salary in the company.
--9. Find customers who have placed more than 5 orders.
--10. Retrieve departments with at least 3 employees.
--11. Find employees hired in the last year.
--12. Retrieve employees with duplicate salaries.
--13. Get the total sales amount per customer.
--14. Find the department with the most employees.
--15. List employees along with their manager’s name.
--16. Find the average order amount per month.
--17. Retrieve customers who have never placed an order.
--18. Get employees who earn more than their managers.
--19. Find employees who have worked for more than 5 years.
--20. Retrieve customers who have placed orders in each year.

