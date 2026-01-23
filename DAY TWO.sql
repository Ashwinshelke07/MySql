CREATE DATABASE database_one;
USE database_one;
CREATE TABLE employee(
ID INT AUTO_INCREMENT PRIMARY KEY,
NAME VARCHAR(100) NOT NULL,
EMAIL VARCHAR(100) UNIQUE NOT NULL,
GENDER ENUM('MALE','FEMALE','OTHERS'),
SALARY INT
);
SELECT * FROM employee;
drop DATABASE users;
drop DATABASE one;
drop DATABASE sys;
alter table employee add column YEAR datetime ;
select * from employee;
alter table employee add column age int;
select ID, NAME from employee;
select * from employee;
INSERT INTO employee (NAME, EMAIL, GENDER, SALARY, `YEAR`, AGE)
VALUES
('ASHWIN', 'ASHWIN@GMAIL.COM', 'MALE', 70000, '2026-03-01 00:00:00', 22),
('ISHA', 'ISHATHOMBRE@24GMAIL.COM', 'FEMALE', 50000, '2026-04-01 00:00:00', 21);
SELECT* FROM employee;
insert into employee (NAME, EMAIL, GENDER, SALARY, `YEAR`, AGE) values('deep','deep34@gmail','male',50000,'2026-04-03 00:00:00',22);