# Employee Salary Analysis (MySQL)

This project is built in **MySQL**. It is a small HR database with employees, departments and bonus data, used to answer simple business questions with SQL.

## Database Design

| Table | Columns |
|---|---|
| `department` | dept_id, dept_name, city |
| `emp` | id, name, city, designation, salary, age, dept_id |
| `bonus` | bonus_id, emp_id, bonus_amount, year |

- `emp.dept_id` links to `department.dept_id` (Foreign Key)
- `bonus.emp_id` links to `emp.id` (Foreign Key)

## SQL Concepts Used

- Constraints: PRIMARY KEY, FOREIGN KEY, NOT NULL, CHECK, DEFAULT, AUTO_INCREMENT
- ALTER TABLE: add column, rename column
- Aggregate functions: SUM, AVG, COUNT
- GROUP BY and HAVING
- Joins: INNER JOIN, LEFT JOIN
- ORDER BY, LIMIT and OFFSET
- String functions: CONCAT, UPPER

## Business Questions Answered

1. What is the total salary expense of the company?
2. Which designation has the highest average salary?
3. Which department costs the most?
4. Who are the top 3 highest paid employees?
5. What is the second highest salary?
6. Which city has the most employees?
7. Which employees received a bonus, and how much?
8. Which employees have not received any bonus yet?
9. Which departments have more than 2 employees?

## How to Run

1. Open MySQL Workbench and connect to your local server
2. Open `employee_salary_analysis.sql`
3. Run the whole file

## Files

- `employee_salary_analysis.sql` : database, tables, data and all queries

---

**SAAD SHAIKH**
LinkedIn: https://www.linkedin.com/in/saad-s-062baa286 | email: saad.shaikh1551@gmail.com  

If you found this useful, please give the repo a star.

README IS Generated with CLAUDE HELP
