-- Looking at the provided pdf file
-- We see that we have to make use of the HR database provided by Oracle.

-- Q1
-- Write a SQL statement to display the salary of the employee with the largest salary working as an accountant (job_title).
SELECT MAX(salary) AS max_salary -- We use MAX() the aggregate function to find the largest salary.
FROM employees e
JOIN jobs j ON e.job_id = j.job_id -- We connect employees and jobs using job_id to access the job_title.
WHERE j.job_title = 'Accountant';
-- Reminder:
-- Aggregation functions are used to perform calculations on a set of values and return a single value.
-- Key Takeaways:
-- Join tables to access related data, such as job titles.
-- Always filter before applying MAX()/AVG() for accurate results(1. FROM → 2. WHERE → 3. GROUP BY → 4. SELECT (aggregates))


-- Q2 Write a SQL statement to display the average salary of the employees who work as programmers (job_title).
SELECT AVG(salary) AS avg_salary -- We use AVG() the aggregate function to find the average salary.
FROM employees e
JOIN jobs j ON e.job_id = j.job_id -- We connect employees and jobs using job_id to access the job_title.
WHERE j.job_title = 'Programmer';

-- Q3 Write a SQL statement to display the Bonus all employees must be paid. Management
-- decided to pay all employees a bonus calculated as 1% of their annual salary.
SELECT first_name, last_name, salary, 
    salary * 0.01 AS bonus -- We calculate the bonus as 1% of the annual salary.
FROM employees;
-- Key Takeaways:
-- Very straightforward, we just multiply the salary by 0.01 to get the bonus.

-- Q4 Write a SQL statement to "update" the salaries of all employees who work as
-- programmers (job_title), management decided to increase their salary with 5.6%.
UPDATE employees e
SET e.salary = e.salary * 1.056
WHERE e.job_id IN ( -- We use IN to filter employees who are programmers.
    SELECT job_id FROM jobs 
    WHERE job_title = 'Programmer'
);
-- Key Takeaways:
-- This is an update operation -> it modifies data permanently in the database.
-- Subqueries are often more efficient than joins for updates.
-- Basically always use a subquery for updates where there is a 'WHERE' clause that filters based on another table.