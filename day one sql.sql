CREATE DATABASE users;
USE users;
CREATE TABLE student(
id INT AUTO_INCREMENT KEY,
email VARCHAR(100) unique NOT NULL,
name VARCHAR(100) NOT NULL,
gender ENUM('MALE','FEMALLE','OTHER'),
date_of_birth DATE
);
DROP TABLE student;

CREATE TABLE student(id INT AUTO_INCREMENT KEY,
email VARCHAR(100) unique NOT NULL,
name VARCHAR(100) NOT NULL,
gender ENUM('MALE','FEMALLE','OTHER'),
date_of_birth DATE
);
SELECT * FROM student;


