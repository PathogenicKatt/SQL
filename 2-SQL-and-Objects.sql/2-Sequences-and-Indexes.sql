-- Sequences and Indexes
-- Sequences are used to generate unique numeric identifiers, often for primary keys.
-- Indexes improve the performance of database queries by allowing faster data retrieval.

-- Sequences
-- Create a sequence for generating unique IDs
CREATE SEQUENCE seq_employee_id
    START WITH 1 
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

INSERT INTO employees VALUES (
    seq_employee_id.NEXTVAL,
    'Lucy',
    'Sibiya',
    'l.sibiya@company.com',
    TO_DATE('28-MAY-2025','DD-MON-YYYY'),
    'Developer',
    90000,
    3,
    TO_DATE('25-SEP-1985','DD-MON-YYYY'),
    '8967126521'
);

-- Note:
-- We don’t have to manually keep track of the next employee_id.
--Just use seq_employee_id.NEXTVAL in our INSERT statement, and Oracle will automatically generate the next unique ID for us.
--This makes data entry easier, prevents duplicate IDs, and ensures each employee gets a unique identifier.
-- --------------------------------------------------------------------------

-- INDEXES (speed up queries)
-- indexes
-- ⚠️ Over-indexing slows down INSERT/UPDATE/DELETE!
CREATE INDEX idx_employees_lastname ON employees (last_name);

-- Example: Suppose you have a large `employees` table
-- 1. Without an Index:
-- SELECT * FROM employees WHERE last_name = 'Sibiya';
-- Oracle scans every row in the table to find matches. This is slow for really large table
-- 2. With an Index
-- Oracle uses the index to quickly find all rows where last_name = 'Sibiya', hence no need to scan the whole table
-- N.B You do not have to change the SELECT queries, Oracle will use the index automatically. You job is to create an index.