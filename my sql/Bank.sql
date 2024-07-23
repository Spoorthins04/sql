CREATE DATABASE movie;
USE movie;

CREATE TABLE movie_info (id VARCHAR(100),name VARCHAR(100),release_date VARCHAR(100),genre VARCHAR(100),rating INT,duration INT,budget BIGINT,revenue BIGINT,award BOOLEAN);


ALTER TABLE movie_info ADD COLUMN director VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN writer VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN producer VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN production_company VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN awards VARCHAR(100);
ALTER TABLE movie_info RENAME COLUMN id TO movie_id;
ALTER TABLE movie_info RENAME COLUMN name TO movie_name;
ALTER TABLE movie_info RENAME COLUMN release_date TO release_year;
ALTER TABLE movie_info RENAME COLUMN genre TO movie_genre;
ALTER TABLE movie_info RENAME COLUMN rating TO movie_rating;
INSERT INTO movie_info (movie_id, movie_name, release_year, movie_genre, movie_rating, director, writer, producer, production_company, awards)
VALUES
('1', 'The Shawshank Redemption', '1994', 'Drama', 9, 'Frank Darabont', 'Stephen King', 'Niki Marvin', 'Columbia Pictures', 'Academy Award for Best Picture'),
('2', 'The Godfather', '1972', 'Crime', 8, 'Francis Ford Coppola', 'Mario Puzo', 'Albert S. Ruddy', 'Paramount Pictures', 'Academy Award for Best Picture'),
('3', 'The Dark Knight', '2008', 'Action', 8.5, 'Christopher Nolan', 'Jonathan Nolan', 'Charles Roven', 'Warner Bros. Pictures', 'Academy Award for Best Picture'),
('4', '12 Angry Men', '1957', 'Drama', 8, 'Sidney Lumet', 'Reginald Rose', 'Henry Fonda', 'United Artists', 'Academy Award for Best Picture'),
('5', 'Schindler''s List', '1993', 'Historical Drama', 7, 'Steven Spielberg', 'Steven Zaillian', 'Gerald R. Molen', 'Universal Pictures', 'Academy Award for Best Picture'),
('6', 'The Lord of the Rings: The Return of the King', '2003', 'Fantasy', 9, 'Peter Jackson', 'Fran Walsh', 'Barrie M. Osborne', 'New Line Cinema', 'Academy Award for Best Picture'),
('7', 'Pulp Fiction', '1994', 'Crime', 7.5, 'Quentin Tarantino', 'Quentin Tarantino', 'Lawrence Bender', 'Miramax Films', 'Academy Award for Best Picture'),
('8', 'The Good, the Bad and the Ugly', '1966', 'Western', 8.5, 'Sergio Leone', 'Sergio Leone', 'Alberto Grimaldi', 'United Artists', 'Academy Award for Best Picture'),
('9', 'Forrest Gump', '1994', 'Drama', 7, 'Robert Zemeckis', 'Eric Roth', 'Wendy Finerman', 'Paramount Pictures', 'Academy Award for Best Picture'),
('10', 'Star Wars: Episode IV - A New Hope', '1977', 'Science Fiction', 7.5, 'George Lucas', 'George Lucas', 'Gary Kurtz', '20th Century Fox', 'Academy Award for Best Picture');

UPDATE movie_info SET movie_rating = 10 WHERE movie_id = '1';
UPDATE movie_info SET director = 'Steven Spielberg' WHERE movie_id = '5';
UPDATE movie_info SET production_company = 'Warner Bros. Pictures' WHERE movie_id = '3';
UPDATE movie_info SET awards = 'Academy Award for Best Director' WHERE movie_id = '2';
UPDATE movie_info SET release_year = '1995' WHERE movie_id = '4';
UPDATE movie_info SET movie_genre = 'Science Fiction' WHERE movie_id = '10';
UPDATE movie_info SET writer = 'George Lucas' WHERE movie_id = '10';
UPDATE movie_info SET producer = 'Gary Kurtz' WHERE movie_id = '10';
UPDATE movie_info SET is_classic = TRUE WHERE movie_id = '6';
UPDATE movie_info SET duration = 180 WHERE movie_id = '8';
DELETE FROM movie_info WHERE movie_id = '1';
DELETE FROM movie_info WHERE movie_id = '3';
DELETE FROM movie_info WHERE movie_id = '6';
SELECT * FROM movie_info WHERE movie_rating = 8;
SELECT * FROM movie_info WHERE director = 'Steven Spielberg' AND movie_genre = 'Historical Drama';
SELECT * FROM movie_info WHERE director = 'Steven ' OR movie_id=6;
SELECT * FROM movie_info WHERE movie_id IN ('2', '4', '5');
  SELECT * FROM movie_info;
CREATE TABLE bank_details (
  customer_name VARCHAR(255),
  account_number VARCHAR(255),
  branch_name VARCHAR(100),
  account_type VARCHAR(100),
  customer_address VARCHAR(255),
  age INT,
  years_with_bank INT,
  balance BIGINT,
  account_opening_balance BIGINT,
  is_active BOOLEAN
);
ALTER TABLE bank_details
ADD COLUMN phone_number VARCHAR(20),
ADD COLUMN email VARCHAR(100),
ADD COLUMN occupation VARCHAR(100),
ADD COLUMN address_line2 VARCHAR(255),
ADD COLUMN city VARCHAR(100);

ALTER TABLE bank_details CHANGE COLUMN customer_name customer_full_name VARCHAR(255);
ALTER TABLE bank_details CHANGE COLUMN account_number account_id INT;
ALTER TABLE bank_details CHANGE COLUMN branch_name branch_location VARCHAR(255);
ALTER TABLE bank_details CHANGE COLUMN account_type account_category VARCHAR(255);
ALTER TABLE bank_details CHANGE COLUMN customer_address address_line1 VARCHAR(255);


INSERT INTO bank_details 
(customer_full_name, account_id, branch_location, account_category, address_line1, age, years_with_bank, balance, account_opening_balance, is_active, phone_number, email, occupation, address_line2, city) 
VALUES 
('John Doe', 123456, 'New York', 'Savings', '123 Main St', 30, 5, 1000, 500, 1, '123-456-7890', 'johndoe@example.com', 'Engineer', 'Apt 101', 'New York'), 
('Jane Smith', 987654, 'Los Angeles', 'Checking', '456 Elm St', 25, 3, 500, 200, 0, '987-654-3210', 'janesmith@example.com', 'Doctor', 'Apt 202', 'Los Angeles'), 
('Bob Brown', 111111, 'Chicago', 'Savings', '789 Oak St', 40, 10, 2000, 1000, 1, '111-111-1111', 'bobbrown@example.com', 'Lawyer', 'Apt 303', 'Chicago'), 
('Alice Johnson', 222222, 'Houston', 'Checking', '321 Pine St', 35, 7, 1500, 750, 1, '222-222-2222', 'alicejohnson@example.com', 'Teacher', 'Apt 404', 'Houston'), 
('Mike Davis', 333333, 'Phoenix', 'Savings', '901 Maple St', 28, 4, 1200, 600, 0, '333-333-3333', 'mikedavis@example.com', 'Programmer', 'Apt 505', 'Phoenix'), 
('Emma Taylor', 444444, 'Philadelphia', 'Checking', '234 Spruce St', 32, 6, 1800, 900, 1, '444-444-4444', 'emmataylor@example.com', 'Nurse', 'Apt 606', 'Philadelphia'), 
('David Lee', 555555, 'San Francisco', 'Savings', '678 Cedar St', 45, 12, 2500, 1250, 1, '555-555-5555', 'davidlee@example.com', 'Manager', 'Apt 707', 'San Francisco'), 
('Sophia Patel', 666666, 'Dallas', 'Checking', '345 Walnut St', 38, 9, 2000, 1000, 0, '666-666-6666', 'sophiapatel@example.com', 'Engineer', 'Apt 808', 'Dallas'), 
('Oliver Martin', 777777, 'San Diego', 'Savings', '567 Fir St', 42, 11, 2200, 1100, 1, '777-777-7777', 'olivermartin@example.com', 'Scientist', 'Apt 909', 'San Diego'), 
('Ava Garcia', 888888, 'Seattle', 'Checking', '890 Pine St', 29, 5, 1500, 750, 0, '888-888-8888', 'avagarcia@example.com', 'Artist', 'Apt 1010', 'Seattle');

UPDATE bank_details
SET balance = 2500
WHERE account_id = '1234567890';

UPDATE bank_details
SET email = 'johndoe2@example.com'
WHERE customer_full_name = 'John Doe';

UPDATE bank_details
SET occupation = 'Consultant'
WHERE account_id = '1111111111';

UPDATE bank_details
SET address_line2 = 'Apt 303B'
WHERE customer_full_name = 'Bob Brown';

UPDATE bank_details
SET phone_number = '555-123-4567'
WHERE account_id = '2222222222';

UPDATE bank_details
SET is_active = TRUE
WHERE customer_full_name = 'Alice Johnson';

UPDATE bank_details
SET account_opening_balance = 1500
WHERE account_id = '3333333333';

UPDATE bank_details
SET city = 'San Jose'
WHERE customer_full_name = 'Mike Davis';

UPDATE bank_details
SET years_with_bank = 8
WHERE account_id = '4444444444';

UPDATE bank_details
SET account_category = 'Savings'
WHERE customer_full_name = 'Emma Taylor';

DELETE FROM bank_details
WHERE account_id = '1234567890';

DELETE FROM bank_details
WHERE customer_full_name = 'Jane Smith';

DELETE FROM bank_details
WHERE balance < 1000;

SELECT * FROM bank_details
WHERE balance > 2000 AND years_with_bank > 5;

SELECT * FROM bank_details
WHERE account_category = 'Savings' OR account_category = 'Checking';

SELECT * FROM bank_details
WHERE customer_full_name IN ('John Doe', 'Jane Smith', 'Bob Brown');

SELECT * FROM bank_details
WHERE balance NOT IN (1000, 2000, 500);

SELECT * FROM bank_details
WHERE city = 'New York' OR city = 'Los Angeles';

SELECT * FROM bank_details
WHERE occupation = 'Engineer' AND age > 30;

SELECT * FROM bank_details;
 
 
 
 
 
 



 
 








 
