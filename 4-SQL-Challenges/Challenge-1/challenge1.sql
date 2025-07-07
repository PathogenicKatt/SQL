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


-- Q2
