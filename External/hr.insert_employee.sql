create or replace PROCEDURE hr.INSERT_EMPLOYEE (p_first_name employees.first_name%type,
p_last_name employees.last_name%type,
p_email employees.email%type,
p_phone_number employees.phone_number%type,
p_job_id employees.job_id%type,
p_salary employees.salary%type
) as 
begin
INSERT INTO Employees VALUES (EMPLOYEES_SEQ.nextval, p_first_name,
p_last_name, p_email, p_phone_number, SYSDATE, p_job_id,
p_salary,.30, 100, 80);
end;