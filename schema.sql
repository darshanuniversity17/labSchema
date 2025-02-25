--lab2
-- Create DEPOSIT table
CREATE TABLE DEPOSIT (
    ACTNO INT,
    CNAME VARCHAR(50),
    BNAME VARCHAR(50),
    AMOUNT DECIMAL(8, 2),
    ADATE DATETIME
);

-- Create BRANCH table
CREATE TABLE BRANCH (
    BNAME VARCHAR(50),
    CITY VARCHAR(50)
);

-- Create CUSTOMERS table
CREATE TABLE CUSTOMERS (
    CNAME VARCHAR(50),
    CITY VARCHAR(50)
);

-- Create BORROW table
CREATE TABLE BORROW (
    LOANNO INT,
    CNAME VARCHAR(50),
    BNAME VARCHAR(50),
    AMOUNT DECIMAL(8, 2)
);


-- Insert data into DEPOSIT table
INSERT INTO DEPOSIT (ACTNO, CNAME, BNAME, AMOUNT, ADATE) VALUES
(101, 'ANIL', 'VRCE', 1000.00, '1995-03-01'),
(102, 'SUNIL', 'AJNI', 5000.00, '1996-01-04'),
(103, 'MEHUL', 'KAROLBAGH', 3500.00, '1995-11-17'),
(104, 'MADHURI', 'CHANDI', 1200.00, '1995-12-17'),
(105, 'PRMOD', 'M.G. ROAD', 3000.00, '1996-03-27'),
(106, 'SANDIP', 'ANDHERI', 2000.00, '1996-03-31'),
(107, 'SHIVANI', 'VIRAR', 1000.00, '1995-09-05'),
(108, 'KRANTI', 'NEHRU PLACE', 5000.00, '1995-07-02'),
(109, 'MINU', 'POWAI', 7000.00, '1995-08-10');

-- Insert data into BRANCH table
INSERT INTO BRANCH (BNAME, CITY) VALUES
('VRCE', 'NAGPUR'),
('AJNI', 'NAGPUR'),
('KAROLBAGH', 'DELHI'),
('CHANDI', 'DELHI'),
('DHARAMPETH', 'NAGPUR'),
('M.G. ROAD', 'BANGLORE'),
('ANDHERI', 'BOMBAY'),
('VIRAR', 'BOMBAY'),
('NEHRU PLACE', 'DELHI'),
('POWAI', 'BOMBAY');

-- Insert data into CUSTOMERS table
INSERT INTO CUSTOMERS (CNAME, CITY) VALUES
('ANIL', 'CALCUTTA'),
('SUNIL', 'DELHI'),
('MEHUL', 'BARODA'),
('MANDAR', 'PATNA'),
('MADHURI', 'NAGPUR'),
('PRAMOD', 'NAGPUR'),
('SANDIP', 'SURAT'),
('SHIVANI', 'BOMBAY'),
('KRANTI', 'BOMBAY'),
('NAREN', 'BOMBAY');

-- Insert data into BORROW table
INSERT INTO BORROW (LOANNO, CNAME, BNAME, AMOUNT) VALUES
(201, 'ANIL', 'VRCE', 1000.00),
(206, 'MEHUL', 'AJNI', 5000.00),
(311, 'SUNIL', 'DHARAMPETH', 3000.00),
(321, 'MADHURI', 'ANDHERI', 2000.00),
(375, 'PRMOD', 'VIRAR', 8000.00),
(481, 'KRANTI', 'NEHRU PLACE', 3000.00);


----LAB_5-------------------------------------------------------------------------------------------
CREATE TABLE Students (
    StuID INT,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    Website VARCHAR(50),
    City VARCHAR(25),
    Division VARCHAR(20)
);

INSERT INTO Students (StuID, FirstName, LastName, Website, City, Division) VALUES
(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'II-BCX'),
(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', 'I-BCY'),
(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'IV-DCX'),
(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', 'III-DCW'),
(1055, 'Harmit', 'Mitel', NULL, 'Rajkot', 'II-BCY'),
(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'II-BCZ');


--LAB_6
CREATE TABLE CUSTOMER (
    CID INT,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);

INSERT INTO CUSTOMER (CID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkista', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitucion 2222', 'Mexico D.F.', '05021', 'Mexico'),
(3, 'Latonio Moreno Taqueria', 'Antonio Moreno', 'Mataderos 2312', 'Mexico D.F.', '05023', 'Mexico'),
(4, 'Around the Hors', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbkop', 'Christina Berglund', 'Berguvsvagen 8', 'Lulea', 'S-958 22', 'Sweden');


--lab 12

-- Part A
-- Create Student_Marks table and insert data.
CREATE TABLE Student_Marks (
    Sid INT,
    SName VARCHAR(50),
    Marks INT
);

INSERT INTO Student_Marks (Sid, SName, Marks) VALUES
(1, 'John', 90),
(2, 'Martin', 80),
(3, 'Carol', 89),
(4, 'Jack', 99),
(5, 'Rose', 88),
(6, 'Mary', 90);

-- Part B
-- Create Employee table and insert data.
CREATE TABLE Employee (
    EID INT,
    EName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(50)
);

INSERT INTO Employee (EID, EName, Department, Salary, JoiningDate, City) VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad'),
(107, 'Neha', 'HR', 34000, '1991-12-25', 'Rajkot');

--lab 13

CREATE TABLE Student (
    SID INT,
    SName VARCHAR(50),
    Department VARCHAR(50),
    SPI DECIMAL(4,2),
    City VARCHAR(50)
);

INSERT INTO Student (SID, SName, Department, SPI, City) VALUES
    (101, 'Jay', 'MCA', 8.8, 'Rajkot'),
    (102, 'Deep', 'BCA', 5.6, 'Ahmedabad'),
    (103, 'Bhavin', 'BBA', 8.3, 'Baroda'),
    (104, 'Dharmik', 'BCA', 9.9, 'Rajkot'),
    (105, 'Jeet', 'MCA', 10.0, 'Jamnagar'),
    (106, 'Priya', 'MBA', 5.5, 'Ahmedabad'),
    (107, 'Neha', 'BSCIT', 6.5, 'Rajkot');

--lab 14

CREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);

CREATE TABLE Electrical (
    RollNo INT,
    Name VARCHAR(50)
);

INSERT INTO Computer (RollNo, Name) VALUES
    (101, 'Ajay'),
    (109, 'Haresh'),
    (115, 'Manish');

INSERT INTO Electrical (RollNo, Name) VALUES
    (105, 'Ajay'),
    (107, 'Mahesh'),
    (115, 'Manish');


--Lab-15 

CREATE TABLE Cricket (
    Name VARCHAR(50),
    City VARCHAR(50),
    Age INT
);


INSERT INTO Cricket (Name, City, Age) VALUES
    ('Sachin Tendulkar', 'Mumbai', 30),
    ('Rahul Dravid', 'Bombay', 35),
    ('M. S. Dhoni', 'Jharkhand', 31),
    ('Suresh Raina', 'Gujarat', 30);


-- Lab-16

-- Creating Tables
CREATE TABLE Student (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(10)
);

CREATE TABLE Result (
    Rno INT,
    SPI FLOAT
);

CREATE TABLE Employee (
    EmployeeNo VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    ManagerNo VARCHAR(10)
);

-- Inserting Data
INSERT INTO Student VALUES (101, 'Raju', 'CE'), (102, 'Amit', 'CE'), (103, 'Sanjay', 'ME'),
                           (104, 'Neha', 'EC'), (105, 'Meera', 'EE'), (106, 'Mahesh', 'ME');
INSERT INTO Result VALUES (101, 8.8), (102, 9.2), (103, 7.6), (104, 8.2), (105, 7.0), (107, 8.9);
INSERT INTO Employee VALUES ('E01', 'Tarun', NULL), ('E02', 'Rohan', 'E02'), ('E03', 'Priya', 'E01'),
                            ('E04', 'Milan', 'E03'), ('E05', 'Jay', 'E01'), ('E06', 'Anjana', 'E04');


-- Lab-17

-- Creating Tables
CREATE TABLE City (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50) UNIQUE,
    Pincode INT,
    Remarks VARCHAR(50)
);

CREATE TABLE Village (
    VillageID INT PRIMARY KEY,
    VillageName VARCHAR(50),
    CityID INT FOREIGN KEY REFERENCES City(CityID)
);

-- Inserting Data
INSERT INTO City VALUES (1, 'Rajkot', 360005, 'Good'), (2, 'Surat', 335009, 'Good'), 
                        (3, 'Baroda', 390001, 'Awesome'), (4, 'Jamnagar', 361003, 'Smart'),
                        (5, 'Junagadh', 362229, 'Historic'), (6, 'Morvi', 363641, 'Ceramic');

INSERT INTO Village VALUES (101, 'Raiya', 1), (102, 'Madhapar', 1), (103, 'Dodka', 3), 
                           (104, 'Falla', 4), (105, 'Bhesan', 5), (106, 'Dhoraji', 5);




-- LAB 18

-- Creating Tables
CREATE TABLE Department (
    DID INT PRIMARY KEY,
    DName VARCHAR(50)
);

CREATE TABLE Student (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT FOREIGN KEY REFERENCES Department(DID)
);

CREATE TABLE Academic (
    Rno INT FOREIGN KEY REFERENCES Student(Rno),
    SPI FLOAT,
    Bklog INT
);

-- Inserting Data
INSERT INTO Department VALUES (10, 'Computer'), (20, 'Electrical'), (30, 'Mechanical'), (40, 'Civil');
INSERT INTO Student VALUES (101, 'Raju', 'Rajkot', 10), (102, 'Amit', 'Ahmedabad', 20),
                           (103, 'Sanjay', 'Baroda', 40), (104, 'Neha', 'Rajkot', 20),
                           (105, 'Meera', 'Ahmedabad', 30), (106, 'Mahesh', 'Baroda', 10);
INSERT INTO Academic VALUES (101, 8.8, 0), (102, 9.2, 2), (103, 7.6, 1), 
                            (104, 8.2, 4), (105, 7.0, 2), (106, 8.9, 3);



-- LAB 20

-- Creating Table
CREATE TABLE Student (
    StuID INT PRIMARY KEY,
    Name VARCHAR(20),
    EnrollmentNo INT,
    Division VARCHAR(10),
    Sem INT
    Email VARCHAR(100),
    ContactNo VARCHAR(14)
);

-- Inserting Data
INSERT INTO Student (StuID, Name, EnrollmentNo, Division, Sem, Email, ContactNo) VALUES
(101, 'Naimish Patel', 90200107051, 'BCX-3', 3, 'naimishp49@gmail.com', '8866205253'),
(102, 'Firoz A. S.', 90200107090, 'BCY-3', 3, 'Firoz.me@gmail.com', '8885999922'),
(103, 'Krunal Vyas', 90243107101, 'BCZ-5', 5, 'Krunal.vyas@gmail.com', '9990888877'),
(104, 'Vijay Patel', 90200107102, 'BCX-5', 5, 'vijay.patel123@gmail.com', '8787878787'),
(105, 'Vimal Trivedi', 90200107103, 'BCY-3', 3, 'Maulik123@gmail.com', '8789564512');




-- LAB 24

-- Implementation of Joins in SQL
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(20)
);

CREATE TABLE IssuedBooks (
    IssueID INT PRIMARY KEY,
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    BookName VARCHAR(50),
);

-- Inserting Data into Students
INSERT INTO Students (StudentID, StudentName) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'Diana');

-- Inserting Data into IssuedBooks
INSERT INTO IssuedBooks (IssueID, StudentID, BookName) VALUES
(1001, 1, 'Mathematics'),
(1002, 2, 'Physics'),
(1003, 3, 'Chemistry'),
(1004, 1, 'Biology'),
(1005, NULL, 'Computer');
