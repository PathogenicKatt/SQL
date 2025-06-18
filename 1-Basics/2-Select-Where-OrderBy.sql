-- The SELECT statement is the foundational of all data retrieval in SQL.

-- Retrieve all columns from the employees table
SELECT * FROM employees;

-- Retrieve specific columns from the employees table
SELECT first_name, last_name, email FROM employees;

-- Retrieve all employees with a specific job title
SELECT * FROM employees WHERE job_title = 'Software Engineer';

-- Retrieve all employees with a salary greater than a certain amount
SELECT * FROM employees WHERE salary > 50000;

-- Retrieve all employees hired after a specific date
SELECT * FROM employees WHERE hire_date > TO_DATE('01-JAN-2024', 'DD-MON-YYYY');

-- Retrieve employees from a specific department
SELECT * FROM employees WHERE department_id = 3;

-- Retrieve employees with a specific email domain
SELECT * FROM employees WHERE email_address LIKE '%@company.com';

-- ------------------------------------------------------------------
-- -- 🧩 Challenge 1: Retrieve all employees with a salary between 30000 and 60000.
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 60000;

-- -- 🧩 Challenge 2: Retrieve all employees whose first name starts with 'A'.
SELECT * FROM employees WHERE first_name LIKE 'A%';

-- -- 🧩 Challenge 3: Retrieve all employees hired in the last 30 days.
SELECT * FROM employees WHERE hire_date >= SYSDATE - 30;

-- -- 🧩 Challenge 4: Retrieve all employees with a phone number that starts with '122'.
SELECT * FROM employees WHERE phone_number LIKE '122%';
-- ---------------------------------------------------------------------

-- Arithmetic operations
-- 🧩 Challenge 5: Retrieve employees with a salary increased by 12%
SELECT first_name, last_name, salary * 1.12 AS increased_salary FROM employees;

-- 🧩 Challenge 6: Retrieve employees with a salary decreased by 5%
SELECT first_name, last_name, salary * 0.95 AS decreased_salary FROM employees;

-- 🧩 Challenge 7: Retrieve employees with a salary that is 10% more than the average salary
SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) * 1.10 FROM employees);

-- ------------------------------------------------------------------------

-- Logical operators
-- 🧩 Challenge 8: Retrieve employees who are either in the IT department or have a salary greater than 60000.
SELECT * FROM employees
WHERE department_id = 3 OR salary > 60000;

-- 🧩 Challenge 9: Retrieve employees who are in the IT department and have a salary greater than 60000.
SELECT * FROM employees
WHERE department_id = 3 AND salary > 60000;

-- 🧩 Challenge 10: Retrieve employees who are not in the IT department and have a salary less than 50000.
SELECT * FROM employees
WHERE NOT department_id = 3 AND salary < 50000;

-- --------------------------------------------------------------------------

-- String Concatenation
-- 🧩 Challenge 11: Retrieve employees with their full name (first_name + last_name).
SELECT first_name || ' ' || last_name AS full_name FROM employees;

-- ---------------------------------------------------------------------------

-- Sorting with ORDER BY
-- 🧩 Challenge 12: Retrieve all employees sorted by last name in ascending order.
SELECT * FROM employees ORDER BY last_name ASC;
-- 🧩 Challenge 13: Retrieve all employees sorted by salary in descending order.
SELECT * FROM employees ORDER BY salary DESC;

-- Multiple Sort Columns
-- 🧩 Challenge 14: Retrieve all employees sorted by department_id and then by last name.
SELECT * FROM employees ORDER BY department_id, last_name; -- ASC(DEAFULT) for both columns

-- Positional Sorting(by column index)
-- 🧩 Challenge 15: Retrieve all employees sorted by the second column (last_name) in ascending order.
SELECT * FROM employees ORDER BY 2 ASC; -- 2 refers to the second column, which is last_name
-- Less readable than column names - use cautiously















