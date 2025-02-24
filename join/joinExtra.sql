CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100),
    DepartmentID INT,
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(100),
    FOREIGN KEY (DepartmentID) REFERENCES DEPT(DepartmentID)
);

CREATE TABLE DEPT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    DepartmentCode VARCHAR(10),
    Location VARCHAR(100)
);



--1. Display person name and their department name.
--2. Display person’s department location.
--3. Display Person’s name, Dept name, salary, and city.
--4. Display person name, salary, and dept code.
--5. Display PersonID, name, joining date, and dept name.
--6. Display person name and dept who belongs to Rajkot.
--7. Display person name who is sitting in ‘C-Block’.
--8. Display person name, dept whose salary is more than 20000.
--9. Display person name, dept code who does not belong to Baroda.
--10. Display person name who works in the Computer department.
--11. Display the name of the person who joined the Civil department after 1-Aug-2001.
--12. Display person’s name whose name starts from ‘B’ in the Electrical department.
--13. Display person’s name and dept who lives in Ahmedabad and earns less than 20000.
--14. Display person’s name whose PersonID is less than 105 and DeptCode is ‘CI’.
--15. Display person’s name who belongs to the Computer or Civil department.
--16. Display the average salary of the Computer department.  
--17. Display the total salary of the department located in 'A-Block'.  
--18. Display department-wise highest salary.  
--19. Display total salaries in each department.  
--20. Count employees per department.  
--21. Display the average salary for employees in 'Rajkot'.  
--22. Count the number of employees per department who joined after the year 2000.  
--23. Display the average salary of employees in the 'Computer' department grouped by city.  
--24. Display the sum of salaries for employees who joined before 2001, in each department.  
--25. Count the number of employees per department with salaries above 25000.  
--26. Display the total salary for each department with departments having more than 2 employees.  
--27. Find all departments whose total salary exceeds 100000.  
--28. List all departments that have no employees.  
--29. Count the number of employees in each city per department.  
--30. Produce an output like: `<PersonName> lives in <City> and works in <DepartmentName> Department.` (In a single column).
  