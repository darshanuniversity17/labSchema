-- Creating City Table
CREATE TABLE City (
    cityid INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Inserting Data into City Table
INSERT INTO City (cityid, name) VALUES 
(101, 'Mumbai'),
(102, 'Delhi'),
(103, 'Bangalore'),
(104, 'Chennai'),
(105, 'Kolkata');

-- Creating Course Table 
CREATE TABLE Course (
    courseid INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Inserting Data into Course Table
INSERT INTO Course (courseid, name) VALUES 
(201, 'MBA'),
(202, 'BscIT'),
(203, 'B.Com'),
(204, 'BCA'),
(205, 'BBA');

-- Creating Student Table
CREATE TABLE Student (
    studentid INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    spi DECIMAL(3,2), 
    cityid INT,
    courseid INT,
    FOREIGN KEY (cityid) REFERENCES City(cityid),
    FOREIGN KEY (courseid) REFERENCES Course(courseid)
);

-- Inserting  Data into Student Table
INSERT INTO Student (studentid, name, spi, cityid, courseid) VALUES 
(301, 'Raj Verma', 8.5, 101, 201),
(302, 'Priya Das', 7.8, 102, 202),
(303, 'Amit Rao', 8.2, 103, 203),
(304, 'Sneha Patel', 9.0, 104, 204),
(305, 'Vikas Sharma', 7.5, 105, 205),
(306, 'Anjali Patel', 8.0, 101, 201),
(307, 'Rohan Mehta', 8.7, 102, 202),
(308, 'Pooja Kulkarni', 7.9, 103, 203),
(309, 'Suresh Patel', 9.1, 104, 204),
(310, 'Kavita Singh', 8.4, 105, 205),
(311, 'Arjun Patel', 7.6, 101, 201),
(312, 'Meera Kapoor', 8.9, 102, 202),
(313, 'Kunal Joshi', 8.3, 103, 203),
(314, 'Rita Saxena', 9.2, 104, 204),
(315, 'Manoj Thakur', 7.8, 105, 205),
(316, 'Deepika Malhotra', 8.5, 101, 201),
(317, 'Harsh Tiwari', 8.0, 102, 202),
(318, 'Swati Patel', 9.0, 103, 203),
(319, 'Nitin Bansal', 7.7, 104, 204),
(320, 'Shweta Patel', 8.6, 105, 205);


--1. Display the number of students in each course.  
--2. Display the difference between the highest and lowest SPI for each city.
--3. Display the total number of students enrolled in the BBA program who live in either Mumbai or Delhi. 
--4. Display the student name along with their course and city. 
--5. Display the number of students in each city whose SPI is greater than 8. 
--6. Display the number of students grouped by both city and course.
--7. Display the names of students who do not belong to Mumbai and are enrolled in either the BBA or BCA course.  
--8. Display the names of cities (excluding Mumbai) where the average SPI of students is greater than 8.8 
--9. Display the difference between the highest and lowest SPI for each course, excluding students from Mumbai and Kolkata.
--10. Display the number of students in each city whose first name starts with 'A' or 'S' and ends with 'L'.
