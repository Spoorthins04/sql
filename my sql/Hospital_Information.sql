CREATE DATABASE Hospital_Information;
USE Hospital_Information;

CREATE TABLE hospital_info (id INT , name VARCHAR(100),address VARCHAR(200),city VARCHAR(50),state VARCHAR(50),country VARCHAR(50),phone_number INT,email VARCHAR(100),website VARCHAR(100),speciality VARCHAR(100));
INSERT INTO hospital_info (id, name, address, city, state, country, phone_number, email, website, speciality)
VALUES
(1, 'Apollo Hospital', '123 Main St', 'Chennai', 'Tamil Nadu', 'India', 0442855555, 'apollo@example.com', '(link )', 'Cardiology'),
(2, 'Fortis Hospital', '456 MG Road', 'Bangalore', 'Karnataka', 'India', 0802211444, 'fortis@example.com', '(link )', 'Neurology'),
(3, 'Max Hospital', '789 Saket', 'New Delhi', 'Delhi', 'India', 0114055555, 'max@example.com', '(link )', 'Oncology'),
(4, 'Manipal Hospital', '321 Doddaballapur', 'Bangalore', 'Karnataka', 'India', 0802855555, 'manipal@example.com', '(link )', 'Orthopedics'),
(5, 'Medanta Hospital', '234 Golf Course Road', 'Gurgaon', 'Haryana', 'India', 0124222555, 'medanta@example.com', '(link )', 'Cardiology'),
(6, 'Sir Ganga Ram Hospital', '567 Rajinder Nagar', 'New Delhi', 'Delhi', 'India', 0114222555, 'sirgangaram@example.com', '(link )', 'Nephrology'),
(7, 'Kokilaben Hospital', '890 Parel', 'Mumbai', 'Maharashtra', 'India', 0222405555, 'kokilaben@example.com', '(link )', 'Oncology'),
(8, 'Reliance Hospital', '345 Powai', 'Mumbai', 'Maharashtra', 'India', 0222855555, 'reliance@example.com', '(link )', 'Cardiology'),
(9, 'Batra Hospital', '678 Tughlakabad', 'New Delhi', 'Delhi', 'India', 0114222555, 'batra@example.com', '(link )', 'Orthopedics'),
(10, 'Columbia Asia Hospital', '567 Hebbal', 'Bangalore', 'Karnataka', 'India', 0802855555, 'columbia@example.com', '(link )', 'Neurology'),
(11, 'Sagar Hospital', '456 Banashankari', 'Bangalore', 'Karnataka', 'India', 0802855555, 'sagar@example.com', '(link )', 'Cardiology'),
(12, 'Mallya Hospital', '789 Vittal Mallya Road', 'Bangalore', 'Karnataka', 'India', 0802855555, 'mallya@example.com', '(link )', 'Oncology'),
(13, 'BGS Global Hospital', '321 Kengeri', 'Bangalore', 'Karnataka', 'India', 0802855555, 'bgs@example.com', '(link )', 'Orthopedics'),
(14, 'Aster CMI Hospital', '567 Hebbal', 'Bangalore', 'Karnataka', 'India', 0802855555, 'aster@example.com', '(link )', 'Neurology'),
(15, 'Narayana Hrudayalaya Hospital', '456 Hosur Road', 'Bangalore', 'Karnataka', 'India', 0802855555, 'narayana@example.com', '(link )', 'Cardiology'),
(16, 'Gleneagles Global Hospital', '789 Richmond Road', 'Bangalore', 'Karnataka', 'India', 0802855555, 'gleneagles@example.com', '(link)', 'Oncology'),
(17, 'Apollo Spectra Hospital', '321 Koramangala', 'Bangalore', 'Karnataka', 'India', 0802855555, 'apollo@example.com', '(link)', 'Orthopedics'),
(18, 'Manipal Hospital', '326 Manipal', 'Udupi', 'Karnataka', 'India', 0802855555, 'Manipal@example.com', '(link)', 'cancer'),
(19, 'Apollo Hospital', '375 shimoga', 'Shimoga', 'Karnataka', 'India', 0802855555, 'apollo1@example.com', '(link)', 'Orthopedics'),
(20, 'Sarjii', '526 shimoga', 'shimoga', 'karnataka', 'India', 0802855555, 'sarjii@example.com', '(link)', 'child specialist');



DESC hospital_info;
SELECT * FROM hospital_info;

CREATE TABLE tourist_places (id INT ,name VARCHAR(100),address VARCHAR(200),city VARCHAR(50),state VARCHAR(50),country VARCHAR(50),description VARCHAR(200),rating INT,reviews INT,website VARCHAR(100),image_url VARCHAR(100));
INSERT INTO tourist_places (id, name, address, city, state, country, description, rating, reviews, website, image_url)
VALUES
(1, 'Taj Mahal', 'Dharmapuri Forest Colony Tajganj', 'Agra', 'Uttar Pradesh', 'India', 'Mughal mausoleum and UNESCO World Heritage Site', 5, 10000, '(link )', '(link )'),
(2, 'Golden Temple', 'Golden Temple Rd Amritsar', 'Amritsar', 'Punjab', 'India', 'Sikh temple and UNESCO World Heritage Site', 5, 5000, '(link )', '(link )'),
(3, 'Qutub Minar', 'Mehrauli, New Delhi', 'New Delhi', 'Delhi', 'India', 'Minaret and UNESCO World Heritage Site', 5, 2000, '(link )', '(link )'),
(4, 'Red Fort', 'Netaji Subhash Marg, New Delhi', 'New Delhi', 'Delhi', 'India', 'Mughal fort and UNESCO World Heritage Site', 5, 1500, '(link )', '(link )'),
(5, 'India Gate', 'Rajpath, New Delhi', 'New Delhi', 'Delhi', 'India', 'War memorial and popular tourist attraction', 4, 1000, '(link )', '(link )'),
(6, 'Gateway of India', 'Apollo Bandar, Mumbai', 'Mumbai', 'Maharashtra', 'India', 'Monument and popular tourist attraction', 4, 500, '(link )', '(link )'),
(7, 'Varanasi Ghat', 'Ganges River, Varanasi', 'Varanasi', 'Uttar Pradesh', 'India', 'Hindu pilgrimage site and UNESCO World Heritage Site', 5, 2000, '(link )', '(link )'),
(8, 'Victoria Memorial', '1, Queen Way, Kolkata', 'Kolkata', 'West Bengal', 'India', 'Museum and memorial to Queen Victoria', 4, 500, '(link )', '(link )'),
(9, 'Hawa Mahal', 'Hawa Mahal Rd, Jaipur', 'Jaipur', 'Rajasthan', 'India', 'Palace and UNESCO World Heritage Site', 5, 1000, '(link)', '(link)'),
(10, 'Amer Fort', 'Devisinghpura, Amer', 'Jaipur', 'Rajasthan', 'India', 'Fort and UNESCO World Heritage Site', 5, 500, '(link)', '(link )'),
(11, 'Mysore Palace', 'Sayyaji Rao Rd, Mysuru', 'Mysuru', 'Karnataka', 'India', 'Palace and UNESCO World Heritage Site', 5, 200, '(link )', '(link )'),
(12, 'Meenakshi Amman Temple', 'East Chitrai St, Madurai', 'Madurai', 'Tamil Nadu', 'India', 'Hindu temple and UNESCO World Heritage Site', 5, 100, '(link )','(link)'),
(13, 'Amruthapura Temple','Tarikere Chikkamagaluru','Chikkamagaluru','Karnataka','India','Hindu temple and UNESCO World Heritage Site',5,100,'(link )','(link)'),
(14, 'Halebedu','Beluru Hassan','Hassan','Karnataka','India','Hindu temple and UNESCO World Heritage Site',5,100,'(link )','(link)'), 
(15, 'Joga falls','Joga Shivamogga','Shivamogga','Karnataka','India','water fall govt project',5, 1000,'(link )','(link)'),
(16, 'kali river','Dandeli uttarkannada','uttarkannada','Karnataka','India','river in karnataka',5, 100,'(link )','(link)'),
(17, 'Virupaksha Temple','Hampi Ballary','Ballary','Karnataka','India','Hindu temple and UNESCO World Heritage Site',5, 100,'(link )','(link)'),
(18, 'Rajas seat garden','Madakeri Coorg','Coorg','Karnataka','India','the garden is known for scenery',5, 100,'(link )','(link)'),
(19, 'Abbi falls','Madakeri kodagu','kodagu','Karnataka','India','water falls',4, 200,'(link )','(link)'),
(20, 'Deviramma Betta','Bindiga Chikkamagaluru','Chikkamagaluru','Karnataka','India','Hindu Temple',4, 200,'(link )','(link)');
DESC tourist_places;
SELECT * FROM tourist_places;
