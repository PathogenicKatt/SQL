-- Views 
-- A view is a virtual table based on the result of a SQL query.
-- 📌 Exam Tip: Views simplify complex queries and restrict data access.
-- Example: Creating a view to simplify employee details retrieval and restrict access to sensitive information.
-- It can be used to simplify queries and restrict access to sensitive information.
CREATE VIEW vw_EmployeeDetails AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name,
    e.hire_dDate
FROM 
    employees e
JOIN
    departments d ON e.department_id = d.department_id;

-- Example: Querying the view to retrieve employee details.
SELECT * FROM vw_EmployeeDetails;
-- Example: Updating the view to include job titles.
CREATE OR REPLACE VIEW vw_EmployeeDetails AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_lame,
    d.department_name,
    e.hire_date,
    j.job_title
FROM
    employees e
JOIN
    departments d ON e.department_id = d.department_id;

-- Key Takeaways:
-- 1. Views are virtual tables based on SQL queries.
-- 2. They simplify complex queries and restrict data access.
-- 3. Views can be updated to include additional information.
-- 4. Use `CREATE OR REPLACE VIEW` to modify existing views.
-- 5. Views can be queried like regular tables.
-- 6. They can help enforce security by limiting data exposure.

