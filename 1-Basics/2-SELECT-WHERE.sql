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

