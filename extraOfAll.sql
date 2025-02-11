
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);


INSERT INTO employees (employee_id, first_name, last_name, email, department, salary, hire_date) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'HR', 50000, '2015-06-23'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'Finance', 60000, '2016-08-15'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'Engineering', 75000, '2018-03-10'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', 'Marketing', 55000, '2017-11-20'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', 'Engineering', 80000, '2019-01-05'),
(6, 'Diana', 'Miller', 'diana.miller@example.com', 'Finance', 62000, '2020-09-14'),
(7, 'Eve', 'Clark', 'eve.clark@example.com', 'HR', 52000, '2014-12-02'),
(8, 'Frank', 'Wright', 'frank.wright@example.com', 'Engineering', 77000, '2021-07-07'),
(9, 'Grace', 'Hall', 'grace.hall@example.com', 'Marketing', 57000, '2013-04-18'),
(10, 'Hank', 'Green', 'hank.green@example.com', 'Finance', 61000, '2022-02-25');


-- 1. Retrieve all the information about every employee?
-- 2. Select only the first name, last name, and department of all employees?
-- 3. Find all employees who work in the 'Engineering' department?
-- 4. Retrieve employees who earn more than $60,000?
-- 5. List employees who were hired after January 1, 2018?
-- 6.Find employees whose first name starts with the letter 'J'?
-- 7. Get a list of all unique departments from the table?
-- 8. Sort employees by their salary in descending order?
-- 10. Count the number of employees in each department?

-- 11. Update the salary of the employee with ID 3 to $78,000?
-- 12. Give a 5% raise to all employees in the Marketing department?
-- 13. Change Alice Johnson's department to Research?
-- 14. Set the salary to $0 for employees hired before 2015?

-- 15. How do you delete the employee with ID 5?
-- 16. How can you remove all employees from the HR department?
-- 17. How do you delete employees earning less than $55,000?
-- 18. How can you delete employees hired before 2010?
-- 19. How do you delete all records from the employees table?

-- 20. How can you add a new column phone_number to the employees table?
-- 21. How do you remove the email column from the employees table?
-- 22. How do you find employees whose last name ends with 'son'?
-- 23. How can you retrieve employees whose email contains 'john'?
-- 24. How do you find employees with four-letter first names?
-- 25. How can you list employees whose department starts with 'F'?
-- 26. How do you find employees with double letters in their names?

-- 27. How do you convert all first names to uppercase?
-- 28. How can you convert department names to lowercase?

-- 29. How do you retrieve the year each employee was hired?
-- 30. How do you calculate the number of days since each employee was hired?
