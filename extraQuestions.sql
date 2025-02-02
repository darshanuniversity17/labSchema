/************************/
/* Create Table Schemas */
/************************/

CREATE TABLE College (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(50),
    Faculty NVARCHAR(50),
    Fees DECIMAL(10,2),
    DurationYears INT,
    StartYear INT,
    SeatsAvailable INT
);

CREATE TABLE Students124 (
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(50),
    CourseID INT,
    SPI DECIMAL(3,2),
    Result NVARCHAR(10),
    AdmissionYear INT,
    Gender NVARCHAR(10),
    Scholarship DECIMAL(10,2)
);


SELECT * FROM College
SELECT * FROM Students124
/***********************/
/* Insert Records */
/***********************/

INSERT INTO College VALUES
(1, 'Computer Engineering', 'Engineering', 75000, 4, 2023, 60),
(2, 'Electrical Engineering', 'Engineering', 80000, 4, 2023, 55),
(3, 'MBA', 'Management', 120000, 2, 2024, 40),
(4, 'MBBS', 'Medicine', 250000, 5, 2023, 100),
(5, 'BBA', 'Management', 60000, 3, 2024, 75);

INSERT INTO Students124 VALUES
(101, 'Aarav Patel', 1, 8.75, 'Pass', 2023, 'Male', 15000),
(102, 'Ananya Sharma', 1, 7.90, 'Pass', 2023, 'Female', 10000),
(103, 'Rohan Gupta', 2, 6.50, 'Fail', 2024, 'Male', 0),
(104, 'Isha Singh', 3, 9.20, 'Pass', 2024, 'Female', 20000),
(105, 'Vivek Kumar', 4, 8.10, 'Pass', 2023, 'Male', 30000),
(106, 'Neha Desai', 2, 8.45, 'Pass', 2024, 'Female', 12000),
(107, 'Siddharth Mehta', 5, 7.30, 'Pass', 2024, 'Male', 8000),
(108, 'Priya Joshi', 4, 6.75, 'Fail', 2023, 'Female', 0),
(109, 'Karan Malhotra', 3, 9.50, 'Pass', 2024, 'Male', 25000),
(110, 'Divya Reddy', 5, 8.90, 'Pass', 2024, 'Female', 18000);



-- 1. What is the average fees per faculty?  
-- 2. What is the total number of seats available per course category?  
-- 3. How many courses exist for each duration?  
-- 4. What is the maximum fee per faculty?  
-- 5. What is the minimum number of seats available in management courses?  (use faculty column)
-- 6. Which faculties have an average fee greater than 100000?  
-- 7. What is the total fees collected per course duration?  
-- 8. Which faculties offer more than one course?   
-- 11. What is the average SPI per course?  
-- 12. How many students were admitted per year?  
-- 13. How many students passed in each course?  
-- 14. What is the highest SPI achieved by gender?  
-- 15. What is the lowest SPI per course where the result is 'Pass'?  
-- 16. What is the average SPI per admission year where the average is greater than 8.0?  
-- 17. What is the total scholarship amount per course?  
-- 19. Which courses have more than three students?  
-- 20. What is the average scholarship per gender?  
-- 21. How many students failed per admission year?  
-- 22. What is the maximum scholarship per course?  
-- 23. What is the SPI range (max-min) per gender?  
-- 24. Which courses have an average scholarship greater than 15000?  
-- 25. How many students are enrolled per course and gender combination? 
-- 27. How many students had SPI greater than 8.5 per admission year?  
-- 28. What is the average fee for courses starting in 2023?  
-- 29. Which course duration has the most seats available?  
-- 30. How many courses started in each year?  
-- 31. What is the total scholarship distribution per result status?  
-- 32. Which courses have exactly two female students? 
-- 34. What is the fee distribution bracket per faculty?  
-- 36. How many students are enrolled in courses with odd-numbered course IDs?  
-- 37. What is the average SPI of students with a scholarship greater than 10000?  
-- 38. Which courses have no failed students?  
-- 39. What is the maximum scholarship amount per gender?  
-- 41. Which course has the most consistent SPI performance?  
-- 43. Which courses have all students receiving a scholarship?  
