-- Triggers (Automate Actions)
-- Triggers automate actions in response to data changes.
CREATE TABLE employee_audit (
    audit_id INT PRIMARY KEY,
    employee_id INT NOT NULL,
    old_salary NUMBER(10,2) NOT NULL,
    new_salary NUMBER(10,2) NOT NULL,
    changed_on DATE NOT NULL
);

CREATE OR REPLACE TRIGGER trg_audit_employee_update
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_audit(employee_id, old_salary, new_salary, changed_on)
    VALUES (:OLD.employee_id, :OLD.salary, :NEW.salary, SYSDATE);
END;
/
-- Automatically records changes to an employee’s salary in an audit table every time an employee’s record is updated.
 -- Right, now let us trigger the table

 UPDATE employees SET salary = salary * 1.05 WHERE employee_id = 1;

 -- Let's check the employee_audit table

 SELECT * FROM employee_audit;

