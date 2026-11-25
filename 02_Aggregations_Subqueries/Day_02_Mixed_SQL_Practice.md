# Day 2 — Mixed SQL Practice

## Practice setup

Assumed table:

`employees(emp_id, emp_name, department, salary, age)`

Topics practised:
- Aggregates: `COUNT()`, `SUM()`, `AVG()`, `MAX()`
- `GROUP BY` and `HAVING`
- Row filtering with `WHERE`
- Sorting aggregate results with `ORDER BY`
- `DISTINCT` and `COUNT(DISTINCT ...)`
- Scalar subqueries

## Reviewed questions and final solutions

### Q1. Filter IT employees and sort by salary

**Score: 10/10**

```sql
SELECT emp_name, department, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;
```

Correct. Single-quoted string literals are the conventional SQL style.

### Q2. Count employees in each department

**Score: 7/10**

```sql
SELECT department, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY department;
```

Review points:
- Include the grouping column (`department`) in the selected output.
- Correct the table spelling to `employees`.
- Use a space between `AS` and the alias.

### Q3. Calculate total salary by department

**Score: 10/10**

```sql
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
```

Correct use of `SUM()` and `GROUP BY`.

### Q4. Show departments with average salary above 35000

**Score: 8/10**

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 35000;
```

Review points:
- Add a comma between `department` and `AVG(salary)`.
- Use `HAVING`, not `HAVING BY`.

### Q5. Count employees earning above 30000 in each department

**Score: 10/10**

```sql
SELECT department, COUNT(emp_name) AS total_employees
FROM employees
WHERE salary > 30000
GROUP BY department;
```

Correct. `WHERE` filters employee rows before grouping.

### Q6. Sort departments by total salary, highest first

**Score: 8/10**

```sql
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;
```

Review point: sort by the aggregate result (the alias `total_salary`), not the individual `salary` column.

### Q7. Filter rows, calculate department averages, filter groups, and sort

**Score: 8/10**

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary > 25000
GROUP BY department
HAVING AVG(salary) > 40000
ORDER BY average_salary DESC;
```

Review points:
- Use the table name `employees`.
- Sort by the calculated average (`average_salary`), not individual `salary`.

### Q8. Count unique departments

**Score: 6/10**

```sql
SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;
```

Key distinction:
- `SELECT DISTINCT department` returns the unique department values.
- `COUNT(DISTINCT department)` returns the number of unique department values.

### Q9. Find employees earning more than the overall average salary

**Score: 5/10**

```sql
SELECT emp_name, department, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

The inner query calculates one overall average. The outer query returns individual employees whose salaries exceed that value. No `GROUP BY` is needed because individual employee rows are required.

### Q10. Find the second-highest distinct salary

**Score: 6/10**

```sql
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
```

The inner query finds the highest salary. The outer query finds the maximum salary below it. This returns the second-highest **distinct** salary; it returns NULL if there is no lower non-NULL salary.

## Scorecard

| Question | Score |
|---|---:|
| Q1 | 10/10 |
| Q2 | 7/10 |
| Q3 | 10/10 |
| Q4 | 8/10 |
| Q5 | 10/10 |
| Q6 | 8/10 |
| Q7 | 8/10 |
| Q8 | 6/10 |
| Q9 | 5/10 |
| Q10 | 6/10 |
| **Total** | **78/100** |

**Overall score: 7.8/10**

## Revision priorities

1. Practise `COUNT(DISTINCT column)`.
2. Strengthen scalar subqueries and inner/outer query logic.
3. Practise second-highest and other ranking-style questions.
4. Sort grouped results using the aggregate expression or its alias.
5. Keep distinguishing row-level filtering (`WHERE`) from group-level filtering (`HAVING`).

---

*These are reviewed learning solutions based on the stated table structure. Run them against an `employees` table with matching columns in your SQL environment.*
