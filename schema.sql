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