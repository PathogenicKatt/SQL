-- Summary
-- This file summarizes the key concepts and queries covered in the SQL course.

-- 1. Table Creation & Constraints
-- CREATE TABLE -> Used to create a new table. 
-- Constraints like PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, and CHECK are used to enforce rules on the data.
-- PRIMARY KEY: Uniquely identifies each row in a table.
-- FOREIGN KEY: Establishes a relationship between two tables.
-- UNIQUE: Ensures all values in a column are different.
-- NOT NULL: Ensures a column cannot have a NULL value.
-- CHECK: Ensures that all values in a column satisfy a specific condition.

-- ALTER TABLE -> Used to modify an existing table structure.
-- ADD COLUMN: Adds a new column to an existing table.
-- DROP COLUMN: Removes a column from an existing table.
-- MODIFY COLUMN: Changes the data type or constraints of an existing column.

-- INSERT INTO -> Used to add new rows to a table.
-- INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);

-- DROP TABLE -> Used to delete an entire table and its data.
-- DROP TABLE table_name;

-- 2. Data Retrieval
-- SELECT -> Used to query data from a table.
-- SELECT column1, column2, ... FROM table_name WHERE condition;

-- WHERE -> Filters records based on a specified condition.
-- Operators: =, <>, <, >, <=, >=, BETWEEN, LIKE, IN, IS NULL, IS NOT NULL.
-- Example: SELECT * FROM employees WHERE salary > 50000;

-- ORDER BY -> Sorts the result set in ascending or descending order.

-- String Concatination
-- first_name || ' ' || last_name AS full_name

-- SYSDATE -> Returns the current date and time.
-- DATE Functions -> Used to manipulate date values.
-- Example: Employeess hired in the last 30 days.
-- SELECT * FROM employees WHERE hire_date >= SYSDATE - 30;
-- Example: Employees with salary between 50000 and 100000.
-- SELECT * FROM employees WHERE salary BETWEEN 50000 AND 100000;

-- 3. Joins(Combining Tables)
-- Joins are used to combine rows from two or more tables based on a related column.

-- INNER JOIN -> Returns records that have matching values in both tables.
-- Example: SELECT e.first_name, d.department_name
-- FROM employees e
-- INNER JOIN departments d ON e.department_id = d.department_id;

-- LEFT JOIN -> Returns all records from the left table and matched records from the right table.
-- Example: SELECT e.first_name, d.department_name
-- FROM employees e
-- LEFT JOIN departments d ON e.department_id = d.department_id;

-- RIGHT JOIN -> Returns all records from the right table and matched records from the left table.
-- Example: SELECT e.first_name, d.department_name
-- FROM employees e
-- RIGHT JOIN departments d ON e.department_id = d.department_id;

-- FULL OUTER JOIN -> Returns all records when there is a match in either left or right table records.
-- Example: SELECT e.first_name, d.department_name
-- FROM employees e
-- FULL OUTER JOIN departments d ON e.department_id = d.department_id;

-- CROSS JOIN -> Returns the Cartesian product of two tables.
-- Example: SELECT e.first_name, p.project_name
-- FROM employees e
-- CROSS JOIN projects p;

-- SELF JOIN -> Joins a table to itself.
-- Example: SELECT e1.first_name AS employee, e2.first_name AS manager
-- FROM employees e1
-- INNER JOIN employees e2 ON e1.manager_id = e2.employee_id;

-- 4. Data Modification (INSERT, UPDATE, DELETE)
-- INSERT INTO -> Adds new rows to a table.
-- Example: INSERT INTO employees (first_name, last_name, department_id) VALUES ('John', 'Doe', 1);

-- UPDATE -> Modifies existing rows in a table.
-- Example: UPDATE employees SET salary = salary * 1.1 WHERE department_id = 1;
-- Example2: UPDATE employees SET department_id = 2 WHERE employee_id = 1;

-- DELETE -> Removes rows from a table.
-- Example: DELETE FROM employees WHERE employee_id = 1;

-- 5. Aggregation and Grouping
-- Aggregation functions are used to perform calculations on a set of values and return a single value.
-- Grouping is used to arrange identical data into groups.
-- AGGREGATION FUNCTIONS and GROUPING
-- COUNT: Returns the number of rows that match a specified condition.
-- Example: SELECT COUNT(*) AS total_employees FROM employees;
-- Example2: SELECT department_id, COUNT(*) AS total_employees FROM employees GROUP BY department_id;
-- Example3: SELECT department_id, COUNT(*) AS total_projects FROM projects GROUP BY department_id
-- Example4: SELECT COUNT(*) AS high_salary_employees FROM employees WHERE salary > 50000;

-- SUM: Returns the total sum of a numeric column.
-- Example: SELECT SUM(salary) AS total_salary FROM employees;
-- Example2: SELECT SUM(budget) AS total_budget FROM projects;
-- Example3: SELECT department_id, SUM(budget) AS total_budget FROM projects GROUP BY department_id;

-- AVG: Returns the average value of a numeric column.
-- Example: SELECT AVG(salary) AS average_salary FROM employees;
-- Example2: SELECT department_id, AVG(salary) AS average_salary FROM employees GROUP BY department_id;

-- MAX: Returns the maximum value of a column.
-- Example: SELECT MAX(salary) AS highest_salary FROM employees;
-- Example2: SELECT department_id, MAX(salary) AS highest_salary FROM employees GROUP BY department_id;

-- MIN: Returns the minimum value of a column.
-- Example: SELECT MIN(salary) AS lowest_salary FROM employees;

