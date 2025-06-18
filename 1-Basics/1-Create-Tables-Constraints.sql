
-- 🏗️ 1. CREATE TABLE BASICS
-- 📌 Exam Tip: Use descriptive names (e.g., 'employees' not 'tbl1').
-- 📌 Exam Tip: Use constraints to enforce data integrity (e.g., NOT NULL, UNIQUE, CHECK).
-- VARCHAR(Variable Character) is used for variable-length strings.
-- Create a table named 'employees' with various data types and constraints

-- 🧩 Challenge 1: Add a 'department_id' column (foreign key to 'departments' table).
-- Hint: You'll need to create the 'departments' table first!

CREATE TABLE departments (
    department_id INT PRIMARY KEY, -- Unique identifier for each department
    department_name VARCHAR2(50) NOT NULL -- Name of the department
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,  -- Unique identifier for each employee
    first_name VARCHAR(30) NOT NULL, -- First name of the employee
    last_name VARCHAR(30) NOT NULL, -- Last name of the employee
    email_address VARCHAR(50) UNIQUE NOT NULL, -- Unique email address for the employee
    hire_date DATE NOT NULL, -- Date when the employee was hired
    job_title VARCHAR(50) NOT NULL, -- Job title of the employee
    salary NUMBER(10, 2) CHECK (salary > 0),-- Salary of the employee, must be positive , and the DECIMAL type allows for 10 fixed-point numbers with two decimal places
    -- ANSWERS: For Challenge 1
    department_id INT, -- Foreign key to the 'departments' table
    FOREIGN KEY (department_id) REFERENCES departments(department_id) -- Foreign key constraint to ensure referential integrity)
);


-- 🔄 2. ALTER TABLE (Modifying Structure)
-- 📌 Exam Tip: Use the keyword ALTER TABLE to add, modify, or drop columns and constraints.
-- 📌 Exam Tip: ALTER is for changing existing tables (like renovating a house).

-- Add a new column 'birth_date' to the 'employees' table
ALTER TABLE employees ADD birth_date DATE; -- Adding a new column for employee's birth date

-- Add a new column 'phone_number' to the 'employees` table
ALTER TABLE employees ADD phone_number VARCHAR2(15); 

-- Modify an existing column 'email_adress' from the 'employees' table to increase the number of characters allowed 
ALTER TABLE employees MODIFY email_address VARCHAR2(100); 


-- 🗝️ 3. CONSTRAINTS DEEP DIVE
-- 📌 Exam Tip: Constraints enforce rules on data in tables (like traffic rules for data).

-- A) CHECK (Custom rules)
-- 📌 Exam Tip: CHECK constraints validate data against a condition.
ALTER TABLE employees ADD CONSTRAINT chk_salary CHECK (salary < 100000); -- No one earns more than 100k here! 😅

-- B) UNIQUE (No duplicates, but NULLs allowed)

ALTER TABLE employees ADD CONSTRAINT uniq_phone UNIQUE (phone_number); -- Ensuring no two employees have the same phone number

-- 🧩 Challenge 2: Add a CHECK constraint to ensure 'hire_date' is not in the future.


-- 🗃️ 4. INSERT DATA (Testing My Constraints)
-- 📌 Exam Tip: Constraints are validated during INSERT/UPDATE.
-- 📌 Exam Tip: Use INSERT INTO to add data to tables.
-- 📌 Exam Tip: Use VALUES to specify the data for each column.

INSERT INTO departments VALUES (1, 'Human Resources'); -- Adding a department
INSERT INTO departments VALUES (2, 'Finance'); -- Adding another department
INSERT INTO departments VALUES (3, 'IT'); -- Adding another department

INSERT INTO employees VALUES (
    1,
    'Adam',
    'Smith',
    'adam.smith@company.com',
    TO_DATE('12-MAY-2024','DD-MON-YYYY'),
    'Software Engineer',
    45000.00,
    3, -- department_id
    TO_DATE('09-JAN-1990','DD-MON-YYYY'),
    '1222134334' -- phone_number

);
INSERT INTO employees VALUES (
    2,
    'Emily',
    'Johnson',
    'am.johnson@company.com',
    TO_DATE('15-JUN-2024','DD-MON-YYYY'),
    'HR Manager',
    60000.00,
    1, -- department_id
    TO_DATE('22-FEB-1985','DD-MON-YYYY'),
    '1234567890' -- phone_number
);
INSERT INTO employees VALUES (
    3,
    'Michael',
    'Brown',
    'michael.B@company.com',
    TO_DATE('20-JUL-2024','DD-MON-YYYY'),
    'Finance Analyst',
    55000.00,
    2, -- department_id
    TO_DATE('05-MAR-1988','DD-MON-YYYY'),
    '0987654321' -- phone_number
);
INSERT INTO employees VALUES (
    4,
    'Sarah',
    'Davis',
    'sarah.dav@company00.com',
    TO_DATE('25-AUG-2024','DD-MON-YYYY'),
    'IT Support',
    40000.00,
    3, -- department_id
    TO_DATE('30-APR-1992','DD-MON-YYYY'),
    '1122334455' -- phone_number
);

INSERT INTO employees VALUES (
    5,
    'David',
    'Wilson',
    'dav.wilson@company.com',
    TO_DATE('01-SEP-2024','DD-MON-YYYY'),
    'Project Manager',
    70000.00,
    1, -- department_id
    TO_DATE('15-JUN-1980','DD-MON-YYYY'),
    '1231231234' -- phone_number
);

-- 🧩 Challenge 3: Write an INSERT that violates the UNIQUE email constraint.
INSERT INTO employees VALUES(
    6,
    'Amy',
    'Johnson',
    'am.johnson@company.com', -- This email already exists, so it will violate the UNIQUE constraint
    TO_DATE('10-OCT-2024','DD-MON-YYYY'),
    'Marketing Specialist',
    50000.00,
    2, -- department_id
    TO_DATE('20-JAN-1995','DD-MON-YYYY'),
    '1234567890' -- phone_number
);

INSERT INTO employees VALUES(
    6,
    'Tumi',
    'Mathibela',
    't.mathibela@company.com',
    TO_DATE('15-APR-2023', 'DD-MON-YYYY'),
    'Software Engineer',
    80000.00,
    3,
    TO_DATE('31-JAN-1997', 'DD-MON-YYYY'),
    '8329811132'
    
);


-- 📜 5. DROP TABLE 
-- 📌 Exam Tip: Use DROP TABLE to remove a table and all its data.
-- 📌 Exam Tip: Be careful! This action cannot be undone.

-- DROP TABLE employees; -- Uncomment to drop the 'employees' table
-- DROP TABLE departments; -- Uncomment to drop the 'departments' table

-- 🎯 Key Takeaways:
-- 1. Use descriptive names for tables and columns.
-- 2. Enforce data integrity with constraints (NOT NULL, UNIQUE, CHECK).
-- 3. Use ALTER TABLE to modify existing tables.
-- 4. Insert data carefully, respecting constraints.
-- 5. Use DROP TABLE to remove tables when no longer needed.

