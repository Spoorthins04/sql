CREATE DATABASE RTO;
USE RTO;
CREATE TABLE LLR_INFO (
    LLR_ID INT PRIMARY KEY,
    Name VARCHAR(20),
    Address VARCHAR(20),
    DateOfBirth DATE,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(20),
    Gender CHAR,
    Nationality VARCHAR(50));
    
INSERT INTO LLR_INFO (LLR_ID, Name, Address, DateOfBirth, PhoneNumber, Email, Gender, Nationality)
VALUES
(1, 'John ', 'Bangalore', '1990-01-01', '1234567890', 'john@01.com', 'M', 'India'),
(2, 'Jenny', 'Shimoga', '1991-02-01', '2345678901', 'jenny@02.com', 'F', 'India'),
(3, 'Aliya', 'chikkamagaluru', '1985-03-01', '3456789012', 'aliya@03.com', 'F', 'India'),
(4, 'Babu', 'sagara', '1988-04-01', '4567890123', 'babu@04.com', 'M', 'India'),
(5, 'Charlie ', ' Maple', '1993-05-01', '5678901234', 'charlie@05.com', 'M', 'India'),
(6, 'David', 'udupi', '1989-06-01', '6789012345', 'david@06.com', 'M', 'India'),
(7, 'kavya', 'mangalore', '1992-07-01', '7890123456', 'kavya@07.com', 'F', 'India'),
(8, 'Abhi', 'chikkamagaluru', '1994-08-01', '8901234567', 'abhi@08.com', 'M', 'India'),
(9, 'Geeny', 'tumukuru', '1995-09-01', '9012345678', 'geeny@09.com', 'F', 'India'),
(10, 'Henry', 'chikkabalapura', '1990-10-01', '0123456789', 'henry@10.com', 'M', 'India');


INSERT INTO LLR_INFO(LLR_ID,Name) values(1,'John') on duplicate key update Name='Kevin';
Replace INTO LLR_INFO(LLR_ID,Name,Address, DateOfBirth, PhoneNumber, Email, Gender, Nationality)values(10,'sudeep','tiptur','2002-10-01','9591868323','sudeep@10.com','M','India');
desc LLR_INFO;
select * from LLR_INFO;




    CREATE TABLE LLR_TEST_INFO (
    TEST_ID INT PRIMARY KEY,
    LLR_ID INT,
    TestDate DATE,
    TestScore INT,
    TestLocation VARCHAR(255),
    TestType VARCHAR(50),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID));
    
INSERT INTO LLR_TEST_INFO (TEST_ID, LLR_ID, TestDate, TestScore, TestLocation, TestType)
VALUES
(1, 1, '2023-01-10', 85, 'Bengalore', 'Theory'),
(2, 2, '2023-01-11', 90, 'Shimoga', 'Practical'),
(3, 3, '2023-01-12', 88, 'Chikkamagaluru', 'Theory'),
(4, 4, '2023-01-13', 92, 'Chikkabalapura', 'Practical'),
(5, 5, '2023-01-14', 87, 'Tiptur', 'Theory'),
(6, 6, '2023-01-15', 89, 'Tumkuru', 'Practical'),
(7, 7, '2023-01-16', 91, 'sagara', 'Theory'),
(8, 8, '2023-01-17', 86, 'Chikkamagaluru', 'Practical'),
(9, 9, '2023-02-18', 93, 'kerala', 'Theory'),
(10, 10, '2023-01-19', 84, 'Tamilnadu', 'Practical');

desc  LLR_TEST_INFO;
select * from  LLR_TEST_INFO;


CREATE TABLE DRIVING_LICENCE_INFO (
    DL_ID INT PRIMARY KEY,
    TEST_ID INT,
    LLR_ID INT,
    Name VARCHAR(255),
    Address VARCHAR(255),
    DateOfBirth DATE,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(255),
    FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);
INSERT INTO DRIVING_LICENCE_INFO (DL_ID, TEST_ID, LLR_ID, Name, Address, DateOfBirth, PhoneNumber, Email)
VALUES
(1, 1, 1, 'John Doe', '123 Main St', '1990-01-01', '1234567890', 'john@example.com'),
(2, 2, 2, 'Jane Smith', '456 Elm St', '1991-02-01', '2345678901', 'jane@example.com'),
(3, 3, 3, 'Alice Brown', '789 Pine St', '1985-03-01', '3456789012', 'alice@example.com'),
(4, 4, 4, 'Bob White', '321 Oak St', '1988-04-01', '4567890123', 'bob@example.com'),
(5, 5, 5, 'Charlie Black', '654 Maple St', '1993-05-01', '5678901234', 'charlie@example.com'),
(6, 6, 6, 'Dave Green', '987 Birch St', '1989-06-01', '6789012345', 'dave@example.com'),
(7, 7, 7, 'Eve Blue', '321 Cedar St', '1992-07-01', '7890123456', 'eve@example.com'),
(8, 8, 8, 'Frank Grey', '654 Walnut St', '1994-08-01', '8901234567', 'frank@example.com'),
(9, 9, 9, 'Grace Yellow', '987 Ash St', '1995-09-01', '9012345678', 'grace@example.com'),
(10, 10, 10, 'Hank Orange', '123 Birch St', '1990-10-01', '0123456789', 'hank@example.com');

desc  DRIVING_LICENCE_INFO ;
select * from  DRIVING_LICENCE_INFO ;

CREATE TABLE DRIVING_LICENSE_TEST_INFO (
    DL_TEST_ID INT PRIMARY KEY,
    DL_ID INT,
    TestDate DATE,
    TestScore INT,
    TestLocation VARCHAR(50),
    TestType VARCHAR(50),
    TestDuration TIME,
    FOREIGN KEY (DL_ID) REFERENCES DRIVING_LICENCE_INFO(DL_ID)
);


INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_TEST_ID, DL_ID, TestDate, TestScore, TestLocation, TestType, TestDuration)
VALUES
(1, 1, '2023-02-10', 95, 'Bangalore', 'Practical', '01:00:00'),
(2, 2, '2023-02-11', 92, 'Mysore', 'Theory', '00:30:00'),
(3, 3, '2023-02-12', 88, 'Hubli', 'Practical', '01:15:00'),
(4, 4, '2023-02-13', 90, 'Mangalore', 'Theory', '00:45:00'),
(5, 5, '2023-02-14', 91, 'Belgaum', 'Practical', '01:10:00'),
(6, 6, '2023-02-15', 87, 'Davangere', 'Theory', '00:50:00'),
(7, 7, '2023-02-16', 89, 'Gulbarga', 'Practical', '01:20:00'),
(8, 8, '2023-02-17', 93, 'Bellary', 'Theory', '00:40:00'),
(9, 9, '2023-02-18', 85, 'Bijapur', 'Practical', '01:05:00'),
(10, 10, '2023-02-19', 86, 'Shimoga', 'Theory', '00:35:00');


desc  DRIVING_LICENSE_TEST_INFO ;
select * from DRIVING_LICENSE_TEST_INFO ;