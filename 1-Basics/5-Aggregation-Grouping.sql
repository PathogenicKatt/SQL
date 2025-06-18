-- 5. Aggregation and Grouping
-- Aggregation functions are used to perform calculations on a set of values and return a single value.
-- Grouping is used to arrange identical data into groups.

-- AGGREGATION FUNCTIONS and GROUPING
-- COUNT: Returns the number of rows that match a specified condition.
-- 🧩 Challenge 1: Count the total number of employees.
SELECT COUNT(*) AS total_employees FROM employees;
-- 🧩 Challenge 2: Count the number of employees in each department.
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

-- 🧩 Challenge 3: Count the number of projects in each department.
SELECT department_id, COUNT(*) AS total_projects
FROM projects
GROUP BY department_id;

-- 🧩 Challenge 4: Count the number of employees with a salary greater than 50000.
SELECT COUNT(*) AS high_salary_employees
FROM employees
WHERE salary > 50000;

-- SUM: Returns the total sum of a numeric column.
-- 🧩 Challenge 5: Calculate the total salary of all employees.

SELECT SUM(salary) AS total_salary FROM employees;
-- 🧩 Challenge 6: Calculate the total budget of all projects.
SELECT SUM(budget) AS total_budget FROM projects;

-- 🧩 Challenge 7: Calculate the total budget of projects in each department.
SELECT department_id, SUM(budget) AS total_budget
FROM projects
GROUP BY department_id;