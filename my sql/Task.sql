CREATE DATABASE collection;
USE collection;

CREATE TABLE Employees (
  EmployeeID int PRIMARY KEY,
  Name varchar(50) NOT NULL,
  Age int CHECK (Age > 18),
  Department varchar(50) UNIQUE,
  Salary INT );

desc Employees ;
select * from Employees;

INSERT INTO Employees (EmployeeID, Name, Age, Department, Salary)
VALUES
(1, 'John', 25, 'HR', 50000),
(2, ' Smitha', 30, 'IT', 60000),
(3, 'Babu', 28, 'Finance', 55000),
(4, 'Aliya', 35, 'Marketing', 65000),
(5, 'Mina', 22, 'Sales', 45000); 
ALTER TABLE Employees ADD CONSTRAINT unique_employees_id UNIQUE(EmployeeID);
ALTER TABLE Employees DROP CONSTRAINT unique_employees_id;
ALTER TABLE Employees ADD CONSTRAINT unique_name UNIQUE(Name);
ALTER TABLE Employees DROP CONSTRAINT unique_Name;


CREATE TABLE Products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100) UNIQUE,
    price int CHECK (price > 0),
    quantity INT,
    manufacture_date DATE);

INSERT INTO Products (id, product_name, price, quantity, manufacture_date) VALUES
(1, 'mobile', 10000, 100, '2022-01-01'),
(2, 'dress', 2000, 200, '2023-02-15'),
(3, 'chocolate', 100, 150, '2024-03-20'),
(4, 'washingmachine',15000, 50, '2022-04-10'),
(5, 'microwave', 5000, 300, '2021-05-05');

desc Products ;
select * from Products;

ALTER TABLE Products ADD CONSTRAINT unique_Products_id UNIQUE(ID);
ALTER TABLE Products DROP CONSTRAINT unique_Products_id;
ALTER TABLE Products ADD CONSTRAINT unique_price UNIQUE(price);
ALTER TABLE Products DROP CONSTRAINT unique_price;


CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL,
    manager_id INT ,
    location VARCHAR(100) ,
    budget int CHECK (budget >= 0) );
    
INSERT INTO Departments VALUES(1, 'HR', 101, 'Bengalore', 10000),
(2, 'Finance', 102, 'mumbai', 2000),
(3, 'IT', 103, 'hydrabad', 30000),
(4, 'Marketing', 104, 'Chennai', 15000),
(5, 'Sales', 105, 'kerala', 25000);

desc Departments ;
select * from Departments;

ALTER TABLE Departments ADD CONSTRAINT unique_Departments_id UNIQUE(ID);
ALTER TABLE Departments DROP CONSTRAINT unique_Departments_id;
ALTER TABLE Departments ADD CONSTRAINT unique_location UNIQUE(location);    
ALTER TABLE Departments DROP CONSTRAINT unique_location;
