CREATE DATABASE Main;
USE Main;
CREATE TABLE USERS(user_id BIGINT PRIMARY KEY,username VARCHAR(30),email VARCHAR(30),first_name VARCHAR(20),last_name VARCHAR(35),age INT,login_attempts INT);
CREATE TABLE Orders (order_id BIGINT PRIMARY KEY,product_name VARCHAR(55),customer_name VARCHAR(25),shipping_address VARCHAR(30),status VARCHAR(30),quantity INT,total_price INT);
CREATE TABLE Employees (employee_id BIGINT PRIMARY KEY,first_name VARCHAR(100),last_name VARCHAR(100),job_title VARCHAR(100),department VARCHAR(100),salary INT,years_with_company INT);
CREATE TABLE Events (event_id BIGINT PRIMARY KEY,event_name VARCHAR(56),location VARCHAR(25),description VARCHAR(26),organizer VARCHAR(100),attendees_count INT,ticket_price INT);
CREATE TABLE Courses (Course_ID bigint,Name varchar(65),Description varchar(25),Credits int,Level varchar(20),Department varchar(45),Professor_ID bigint);
