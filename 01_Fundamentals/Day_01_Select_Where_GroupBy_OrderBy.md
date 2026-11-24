# Day 1 — SQL Fundamentals and Practice

## Topics covered
- SELECT
- FROM
- WHERE
- GROUP BY
- ORDER BY
- ASC and DESC
- Aggregate functions: COUNT(), AVG(), SUM()
- HAVING
- Logical query execution order

## 1. Concept notes

| Clause / function | Purpose |
|---|---|
| SELECT | Chooses the columns to return. `SELECT *` returns all columns. |
| FROM | Specifies the table or tables to read data from. |
| WHERE | Filters individual rows before grouping. |
| GROUP BY | Groups rows that share the same value(s), often for aggregate calculations. |
| HAVING | Filters groups, commonly using aggregate conditions. |
| ORDER BY | Sorts the final result. |
| ASC | Sorts ascending; this is the default order. |
| DESC | Sorts descending. |
| COUNT() | Counts rows or non-NULL values in a column. |
| AVG() | Calculates the arithmetic average of non-NULL values. |
| SUM() | Adds non-NULL numeric values. |

### Basic query structure

```sql
SELECT column_name
FROM table_name
WHERE condition
GROUP BY column_name
HAVING group_condition
ORDER BY column_name ASC;
```

Not every clause is required in every query.

### Logical execution order

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. LIMIT

This is the logical processing order for a typical SELECT query, not the order in which we write the clauses.

### WHERE vs HAVING

- WHERE filters individual rows before groups are formed.
- HAVING filters the groups after GROUP BY.
- Use WHERE for row-level conditions and HAVING for aggregate/group-level conditions.

## 2. Practice questions and reviewed solutions

Practice table used:

`employees(emp_id, emp_name, department, salary, age)`

### Q1. Display employee names and salaries.

**Attempt:** Correct.

```sql
SELECT emp_name, salary
FROM employees;
```

**Score:** 10/10

### Q2. Display names and salaries of employees earning more than 30000.

**Attempt:** Correct logic; the original attempt ended with a colon instead of a semicolon.

```sql
SELECT emp_name, salary
FROM employees
WHERE salary > 30000;
```

**Score:** 9.5/10

### Q3. Display IT employees' names, departments, and salaries, with highest salary first.

**Attempt:** Correct logic; the original attempt had a spelling error in `department`.

```sql
SELECT emp_name, department, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;
```

Using `IN ('IT')` would also be valid, although equality is simpler for one value.

**Score:** 9/10

### Q4. Count employees in each department.

**Attempt:** Used COUNT() correctly, but ORDER BY was used where GROUP BY was required.

```sql
SELECT department, COUNT(emp_name) AS total_employees
FROM employees
GROUP BY department;
```

**Score:** 6/10

### Q5. Calculate the average salary in each department.

**Attempt:** Correct.

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```

**Score:** 10/10

### Q6. Calculate total salary expenditure in each department.

**Attempt:** Used SUM() correctly, but did not select the department column.

```sql
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
```

**Score:** 6/10

### Q7. Show departments with an average salary greater than 35000, sorted from highest to lowest average salary.

**Attempt:** Correct logic. The original attempt had an extra comma after the selected average salary expression.

```sql
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 35000
ORDER BY AVG(salary) DESC;
```

**Score:** 9.5/10

## 3. Assessment

| Question | Score |
|---|---:|
| Q1 — SELECT + FROM | 10/10 |
| Q2 — WHERE | 9.5/10 |
| Q3 — WHERE + ORDER BY | 9/10 |
| Q4 — GROUP BY + COUNT | 6/10 |
| Q5 — GROUP BY + AVG | 10/10 |
| Q6 — GROUP BY + SUM | 6/10 |
| Q7 — GROUP BY + HAVING + ORDER BY | 9.5/10 |
| **Total** | **60/70** |

**Overall score: 8.57/10**

## 4. Revision targets

1. Practise COUNT() and SUM() together with GROUP BY.
2. Strengthen the difference between WHERE and HAVING.
3. Practise writing complete queries carefully to avoid small syntax mistakes.
4. Continue with mixed questions combining filtering, grouping, and sorting.

---
*Learning note: These examples were reviewed during practice. They use the assumed employees table structure above; run them against a matching table in your SQL environment.*
