# Day 3 — SQL WHERE Clause Practice

## Session summary

- Topic: Filtering rows with the `WHERE` clause
- Questions attempted: 6 of 10
- Score: **55/60 (91.7%)**
- Remaining: Q7–Q10 were not attempted in this session.

## Dataset

Table: `employees`

| employee_id | name | department | salary | age |
|---:|---|---|---:|---:|
| 101 | Rahul | IT | 45000 | 24 |
| 102 | Priya | HR | 30000 | 27 |
| 103 | Amit | IT | 55000 | 29 |
| 104 | Sneha | Finance | 40000 | 25 |
| 105 | Karan | HR | 25000 | 23 |
| 106 | Neha | Finance | 60000 | 31 |
| 107 | Rohan | IT | 35000 | 26 |
| 108 | Pooja | Finance | 28000 | 24 |

## Corrected queries and review

### Q1 — Filter by equality
**Task:** Retrieve all columns for employees in IT.

```sql
SELECT *
FROM employees
WHERE department = 'IT';
```

Score: **10/10** — Correct.

### Q2 — Greater than
**Task:** Retrieve names of employees earning more than 40000.

Original attempt used `emp_name`, but the actual column in this practice table is `name`.

```sql
SELECT name
FROM employees
WHERE salary > 40000;
```

Score: **9/10** — Filtering logic was correct; column name did not match the supplied schema.

### Q3 — Filter by department
**Task:** Retrieve names of Finance employees.

```sql
SELECT name
FROM employees
WHERE department = 'Finance';
```

Score: **10/10** — Correct.

### Q4 — Greater than or equal to
**Task:** Retrieve all columns for employees aged 26 or older.

```sql
SELECT *
FROM employees
WHERE age >= 26;
```

Score: **10/10** — Correct. The `>=` operator includes 26.

### Q5 — Combine conditions with AND
**Task:** Retrieve names of IT employees earning more than 40000.

```sql
SELECT name
FROM employees
WHERE department = 'IT'
  AND salary > 40000;
```

Score: **10/10** — Correct. Both conditions must be true.

### Q6 — Combine alternatives with OR
**Task:** Retrieve names of employees in HR or Finance.

Original attempt:
```sql
SELECT name
FROM employees
WHERE department = 'HR' OR 'FINANCE';
```

Correction:
```sql
SELECT name
FROM employees
WHERE department = 'HR'
   OR department = 'Finance';
```

Score: **6/10** — Correctly identified OR, but the second side must also be a complete condition. A standalone text value is not a comparison.

## Key concepts to remember

- `WHERE` filters individual rows before grouping.
- `=` checks equality.
- `>` means strictly greater than.
- `>=` means greater than or equal to; the boundary is included.
- `AND` requires both conditions to be true.
- `OR` requires at least one condition to be true.
- Every condition joined by `AND` or `OR` should be written explicitly.
- Use the exact column names from the table schema.
- In MySQL, single quotes are the standard choice for string literals, for example `'Finance'`.

## Revision targets

1. Practise writing complete conditions with `OR`.
2. Check table and column names before executing a query.
3. Continue with `BETWEEN`, `IN`, and `LIKE` in the next practice questions.

## Session result

**55/60 = 91.7%**

Good accuracy on basic filtering and AND. The main correction from this session is how to write each condition in an OR expression.
