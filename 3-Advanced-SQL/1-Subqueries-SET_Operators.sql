--Subqueries and SET Operators
-- Subqueries are queries nested inside another query, allowing you to perform operations that depend on the results of another query.
-- SET operators combine the results of two or more queries, allowing you to perform operations like union, intersection, and difference.

-- Example: Using a subquery to find employees with salaries above the average salary in their department.
SELECT first_name, last_name, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees
    WHERE department_id = e.department_id
);
-- The small e in your query is called a table alias, in this case, it is an alias for the employees table. 
-- We use it to reference the employees table in the subquery, allowing us to compare each employee's salary against the average salary of their respective department.