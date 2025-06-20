-- Stored Procedures
-- Procedures are a set of SQL statements that can be stored in the database and executed as a single unit.
-- They can accept parameters and return results, making them useful for encapsulating business logic and complex operations.

-- Example: Creating a stored procedure to retrieve employee details by department.

CREATE OR REPLACE PROCEDURE get_employees_by_department(p_dept_id IN NUMBER) AS
BEGIN
    FOR rec IN (SELECT first_name, last_name, salary FROM employees WHERE department_id = p_dept_id) LOOP
        DBMS_OUTPUT.PUT_LINE(rec.first_name || ' ' || rec.last_name || ' - ' || rec.salary);
    END LOOP;
END;
/

--To call (execute) a procedure in Oracle SQL, use the EXECUTE (or EXEC) command, or call it in an anonymous PL/SQL block.
EXECUTE get_employees_by_department(2);
