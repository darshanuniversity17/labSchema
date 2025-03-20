-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert dummy data into Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 1, 50000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 2, 60000.00, '2019-03-22'),
(3, 'Alice', 'Johnson', 1, 55000.00, '2021-07-10'),
(4, 'Bob', 'Brown', 3, 45000.00, '2018-11-05'),
(5, 'Charlie', 'Davis', 2, 70000.00, '2017-09-12');


-- Insert dummy data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT')
(4,'PEON')



-- 1. Select all employees.
-- 2. Select all departments.
-- 3. Get employee details with department names using INNER JOIN.
-- 4. Get all employees and their department names using LEFT JOIN.
-- 5. Get all departments and their employees using RIGHT JOIN.
-- 6. Get all employees and departments using FULL OUTER JOIN.
-- 7. Count the number of employees in each department using GROUP BY.
-- 8. Find departments with more than 1 employee using HAVING.
-- 9. Get the total salary of all employees using SUM().
-- 10. Get the average salary of employees using AVG().
-- 11. Get the highest salary using MAX().
-- 12. Get the lowest salary using MIN().
-- 13. Find employees with a salary greater than the average salary using a subquery.
-- 14. Find employees in the 'Finance' department using a subquery.
-- 15. Find departments with no employees using a subquery.
-- 16. Sort employees by salary in descending order using ORDER BY.
-- 17. Sort employees by hire date in ascending order using ORDER BY.
-- 18. Get the total salary for each department using GROUP BY.
-- 19. Find the employee with the highest salary using a subquery.
-- 20. Get the number of employees hired each year using GROUP BY.
