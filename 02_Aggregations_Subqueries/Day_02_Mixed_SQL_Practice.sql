-- Day 2: Mixed SQL Practice
-- Table assumed: employees(emp_id, emp_name, department, salary, age)
-- Topics: GROUP BY, COUNT, SUM, AVG, HAVING, WHERE, ORDER BY, DISTINCT, subqueries

-- Q1. Display IT employees' names, departments, and salaries,
--     with highest salary first.
SELECT emp_name, department, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- Q2. Count employees in each department.
SELECT department, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY department;

-- Q3. Calculate total salary paid by each department.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- Q4. Show departments whose average salary is greater than 35000.
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 35000;

-- Q5. Count employees in each department whose salary is greater than 30000.
SELECT department, COUNT(emp_name) AS total_employees
FROM employees
WHERE salary > 30000
GROUP BY department;

-- Q6. Calculate each department's total salary and sort highest to lowest.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

-- Q7. For employees earning more than 25000, show departments
--     whose average salary is greater than 40000; highest average first.
SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary > 25000
GROUP BY department
HAVING AVG(salary) > 40000
ORDER BY average_salary DESC;

-- Q8. Count the number of unique departments.
SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;

-- Q9. Find employees earning more than the overall average salary.
SELECT emp_name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Q10. Find the second-highest distinct salary.
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
