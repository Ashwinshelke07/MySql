-- Day 1: SQL Fundamentals Practice
-- Topics: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY
-- Aggregate functions: COUNT(), AVG(), SUM()
--
-- Assumed table:
-- employees(emp_id, emp_name, department, salary, age)
--
-- Run this script after selecting the database that contains the employees table.

-- Q1. Display employee names and salaries.
SELECT emp_name, salary
FROM employees;


-- Q2. Display names and salaries of employees earning more than 30000.
SELECT emp_name, salary
FROM employees
WHERE salary > 30000;


-- Q3. Display IT employees' names, departments, and salaries,
--     sorted from highest salary to lowest.
SELECT emp_name, department, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;


-- Q4. Count employees in each department.
SELECT department, COUNT(emp_name) AS total_employees
FROM employees
GROUP BY department;


-- Q5. Calculate the average salary in each department.
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;


-- Q6. Calculate total salary expenditure in each department.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- Q7. Show departments whose average salary is greater than 35000,
--     sorted from highest to lowest average salary.
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 35000
ORDER BY AVG(salary) DESC;
