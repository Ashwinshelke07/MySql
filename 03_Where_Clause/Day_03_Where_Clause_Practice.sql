-- Day 3: WHERE Clause Practice
-- Table: employees
-- Columns: employee_id, name, department, salary, age
-- Dataset used in today's practice:
-- 101 Rahul IT 45000 24
-- 102 Priya HR 30000 27
-- 103 Amit IT 55000 29
-- 104 Sneha Finance 40000 25
-- 105 Karan HR 25000 23
-- 106 Neha Finance 60000 31
-- 107 Rohan IT 35000 26
-- 108 Pooja Finance 28000 24

-- Q1. Retrieve all columns for employees in the IT department.
SELECT *
FROM employees
WHERE department = 'IT';

-- Q2. Retrieve names of employees earning more than 40000.
-- Note: The table column is named 'name', not 'emp_name'.
SELECT name
FROM employees
WHERE salary > 40000;

-- Q3. Retrieve names of employees in the Finance department.
SELECT name
FROM employees
WHERE department = 'Finance';

-- Q4. Retrieve all columns for employees aged 26 or older.
SELECT *
FROM employees
WHERE age >= 26;

-- Q5. Retrieve names of IT employees earning more than 40000.
SELECT name
FROM employees
WHERE department = 'IT'
  AND salary > 40000;

-- Q6. Retrieve names of employees in either HR or Finance.
-- Each side of OR must be a complete condition.
SELECT name
FROM employees
WHERE department = 'HR'
   OR department = 'Finance';
