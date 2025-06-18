-- Data Modification - INSERT, UPDATE, DELETE
-- Data modification statements are used to add, modify, or remove data in a database.

-- INSERT: Adds new rows to a table.
-- 🧩 Challenge 1: Insert a new employee into the employees table.
INSERT INTO employees VALUES (
    7,
    'Rethabile',
    'Mathibela',
    'r.mathibela@company.com',
    TO_DATE('22-JAN-2024', 'DD-MON-YYYY'),
    'HR Assistant',
    50000,
    1,
    TO_DATE('04-AUG-1999', 'DD-MON-YYYY'),
    '7823117792'
    
);

-- UPDATE: Modifies existing rows in a table.
-- 🧩 Challenge 2: Update the salary of an employee.
UPDATE employees SET salary = 55000 WHERE employee_id = 7;

-- DELETE: Removes rows from a table.
-- 🧩 Challenge 3: Delete an employee from the employees table.
DELETE FROM employees WHERE employee_id = 7;

-- 🧩 Challenge 4: Delete all employees in the HR department.
DELETE FROM employees WHERE department_id = 1;

-- 🧩 Challenge 5: Delete all employees with a salary less than 30000.
DELETE FROM employees WHERE salary < 30000;

-- 🧩 Challenge 6: Delete all employees who were hired before 2020.
DELETE FROM employees WHERE hire_date < TO_DATE('01-JAN-2020', 'DD-MON-YYYY');



