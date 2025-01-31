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

/***********************/
/* 50 Aggregate Queries */
/***********************/

-- Q1: Average fees per faculty
SELECT Faculty, AVG(Fees) AS AvgFees
FROM College
GROUP BY Faculty;

-- Q2: Total seats available per course category
SELECT Faculty, SUM(SeatsAvailable) AS TotalSeats
FROM College
GROUP BY Faculty;

-- Q3: Number of courses per duration
SELECT DurationYears, COUNT(*) AS CourseCount
FROM College
GROUP BY DurationYears;

-- Q4: Maximum fees per faculty
SELECT Faculty, MAX(Fees) AS MaxFees
FROM College
GROUP BY Faculty;

-- Q5: Minimum seats available in management courses
SELECT MIN(SeatsAvailable) AS MinSeats
FROM College
WHERE Faculty = 'Management';

-- Q6: Courses with average fees > 100000
SELECT Faculty, AVG(Fees) AS AvgFees
FROM College
GROUP BY Faculty
HAVING AVG(Fees) > 100000;

-- Q7: Total fees collected per duration year
SELECT DurationYears, SUM(Fees) AS TotalFees
FROM College
GROUP BY DurationYears;

-- Q8: Faculties offering more than 1 course
SELECT Faculty, COUNT(*) AS CourseCount
FROM College
GROUP BY Faculty
HAVING COUNT(*) > 1;

-- Q9: Standard deviation of fees per faculty
SELECT Faculty, STDEV(Fees) AS FeeDeviation
FROM College
GROUP BY Faculty;

-- Q10: Variance in seats availability per duration
SELECT DurationYears, VAR(SeatsAvailable) AS SeatVariance
FROM College
GROUP BY DurationYears;

-- Q11: Average SPI per course
SELECT CourseID, AVG(SPI) AS AvgSPI
FROM Students124
GROUP BY CourseID;

-- Q12: Total Students admitted per year
SELECT AdmissionYear, COUNT(*) AS TotalStudents124
FROM Students124
GROUP BY AdmissionYear;

-- Q13: Number of passed Students124 per course
SELECT CourseID, COUNT(*) AS PassedStudents124
FROM Students124
WHERE Result = 'Pass'
GROUP BY CourseID;

-- Q14: Highest SPI achieved by gender
SELECT Gender, MAX(SPI) AS MaxSPI
FROM Students124
GROUP BY Gender;

-- Q15: Lowest SPI per course where result is pass
SELECT CourseID, MIN(SPI) AS MinPassSPI
FROM Students124
WHERE Result = 'Pass'
GROUP BY CourseID;

-- Q16: Average SPI per admission year where average > 8.0
SELECT AdmissionYear, AVG(SPI) AS AvgSPI
FROM Students124
GROUP BY AdmissionYear
HAVING AVG(SPI) > 8.0;

-- Q17: Total scholarship amount per course
SELECT CourseID, SUM(Scholarship) AS TotalScholarship
FROM Students124
GROUP BY CourseID;

-- Q18: Gender distribution in engineering courses
SELECT Gender, COUNT(*) AS StudentCount
FROM Students124
WHERE CourseID IN (1,2)
GROUP BY Gender;

-- Q19: Courses with more than 3 Students124
SELECT CourseID, COUNT(*) AS StudentCount
FROM Students124
GROUP BY CourseID
HAVING COUNT(*) > 3;

-- Q20: Average scholarship per gender
SELECT Gender, AVG(Scholarship) AS AvgScholarship
FROM Students124
GROUP BY Gender;

-- Q21: Number of failed Students124 per admission year
SELECT AdmissionYear, COUNT(*) AS FailedStudents124
FROM Students124
WHERE Result = 'Fail'
GROUP BY AdmissionYear;

-- Q22: Maximum scholarship per course
SELECT CourseID, MAX(Scholarship) AS MaxScholarship
FROM Students124
GROUP BY CourseID;

-- Q23: SPI range (max-min) per gender
SELECT Gender, MAX(SPI)-MIN(SPI) AS SPIRange
FROM Students124
GROUP BY Gender;

-- Q24: Courses with average scholarship > 15000
SELECT CourseID, AVG(Scholarship) AS AvgScholarship
FROM Students124
GROUP BY CourseID
HAVING AVG(Scholarship) > 15000;

-- Q25: Total Students124 per course and gender combination
SELECT CourseID, Gender, COUNT(*) AS StudentCount
FROM Students124
GROUP BY CourseID, Gender;

-- Q26: Percentage of female Students124 per course
SELECT CourseID, 
       (COUNT(CASE WHEN Gender = 'Female' THEN 1 END) * 100.0 / COUNT(*)) AS FemalePercentage
FROM Students124
GROUP BY CourseID;

-- Q27: Students124 with SPI > 8.5 per admission year
SELECT AdmissionYear, COUNT(*) AS HighAchievers
FROM Students124
WHERE SPI > 8.5
GROUP BY AdmissionYear;

-- Q28: Average fees for courses starting in 2023
SELECT AVG(Fees) AS Avg2023Fees
FROM College
WHERE StartYear = 2023;

-- Q29: Course duration with most seats available
SELECT DurationYears, SUM(SeatsAvailable) AS TotalSeats
FROM College
GROUP BY DurationYears
ORDER BY TotalSeats DESC;

-- Q30: Number of courses starting each year
SELECT StartYear, COUNT(*) AS NewCourses
FROM College
GROUP BY StartYear;

-- Q31: Scholarship distribution per result status
SELECT Result, SUM(Scholarship) AS TotalScholarship
FROM Students124
GROUP BY Result;

-- Q32: Courses with exactly 2 female Students124
SELECT CourseID, COUNT(*) AS FemaleStudents124
FROM Students124
WHERE Gender = 'Female'
GROUP BY CourseID
HAVING COUNT(*) = 2;

-- Q33: Average SPI difference between male and female Students124
SELECT 
    AVG(CASE WHEN Gender = 'Male' THEN SPI END) AS MaleAvg,
    AVG(CASE WHEN Gender = 'Female' THEN SPI END) AS FemaleAvg,
    AVG(CASE WHEN Gender = 'Male' THEN SPI END) - AVG(CASE WHEN Gender = 'Female' THEN SPI END) AS Difference
FROM Students124;
s

-- Q35: Fee distribution brackets per faculty
SELECT Faculty,
       COUNT(CASE WHEN Fees < 100000 THEN 1 END) AS Below1Lac,
       COUNT(CASE WHEN Fees BETWEEN 100000 AND 200000 THEN 1 END) AS MidRange,
       COUNT(CASE WHEN Fees > 200000 THEN 1 END) AS Premium
FROM College
GROUP BY Faculty;


-- Q37: Course popularity ranking by student count
SELECT CourseID, COUNT(*) AS StudentCount
FROM Students124
GROUP BY CourseID
ORDER BY StudentCount DESC;



-- Q40: Students124 in odd-numbered course IDs
SELECT COUNT(*) AS OddCourseStudents124
FROM Students124
WHERE CourseID % 2 != 0;

-- Q41: Average SPI for Students124 with scholarship > 10000
SELECT AVG(SPI) AS HighScholarshipAvg
FROM Students124
WHERE Scholarship > 10000;

-- Q42: Courses with no failed Students124
SELECT CourseID
FROM Students124
GROUP BY CourseID
HAVING SUM(CASE WHEN Result = 'Fail' THEN 1 ELSE 0 END) = 0;

-- Q43: Gender-wise maximum scholarship amount
SELECT Gender, MAX(Scholarship) AS MaxScholarship
FROM Students124
GROUP BY Gender;

-- Q44: Students124 admitted per course per year
SELECT CourseID, AdmissionYear, COUNT(*) AS Admissions
FROM Students124
GROUP BY CourseID, AdmissionYear;


-- Q47: Most consistent SPI performance by course
SELECT CourseID, STDEV(SPI) AS SPIConsistency
FROM Students124
GROUP BY CourseID
ORDER BY SPIConsistency;

-- Q48: Students124 sharing same SPI scores
SELECT SPI, COUNT(*) AS StudentCount
FROM Students124
GROUP BY SPI
HAVING COUNT(*) > 1;


-- Q50: Courses with all Students receiving scholarship
SELECT CourseID
FROM Students124
GROUP BY CourseID
HAVING MIN(Scholarship) > 0;