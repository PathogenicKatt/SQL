-- Joins - Combining Data from Multiple Tables
-- Joins are used to combine rows from two or more tables based on a related column between them.


-- INNER JOIN: Returns rows when there is a match in both tables.
-- 🧩 Challenge 1: Retrieve employees along with their department names.
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;
-- 🧩 Challenge 2: Retrieve projects along with their department names.
SELECT p.project_name, d.department_name
FROM projects p
INNER JOIN departments d ON p.department_id = d.department_id;

-- LEFT JOIN: Returns all rows from the left table and matched rows from the right table. If no match, NULLs are returned for columns from the right table.
-- 🧩 Challenge 3: Retrieve all employees and their department names, including employees without a department.
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;

-- RIGHT JOIN: Returns all rows from the right table and matched rows from the left table. If no match, NULLs are returned for columns from the left table.
-- 🧩 Challenge 4: Retrieve all departments and their employees, including departments without employees.
SELECT d.department_name, e.first_name, e.last_name
FROM departments d
RIGHT JOIN employees e ON d.department_id = e.department_id;

-- FULL OUTER JOIN: Returns all rows when there is a match in either left or right table. If no match, NULLs are returned for columns from the table without a match.
-- 🧩 Challenge 5: Retrieve all employees and departments, including those without matches in either table.
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
FULL JOIN departments d ON e.department_id = d.department_id;

-- CROSS JOIN: Returns the Cartesian product of both tables, combining every row from the first table with every row from the second table.
-- 🧩 Challenge 6: Retrieve all combinations of employees and projects.
SELECT e.first_name, e.last_name, p.project_name
FROM employees e
CROSS JOIN projects p;

-- SELF JOIN: A join where a table is joined with itself.

