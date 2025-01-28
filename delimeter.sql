Delimiter $$
CREATE TRIGGER employee_add
	After insert on employee_salary
    FOR EACH ROW
BEGIN
insert into  employee_demographics (employee_id, first_name, last_name)
Values (NEW.employee_id, NEW.first_name,NEW.last_name);
End $$
Delimiter ;
Insert into employee_salary (employee_id, first_name, last_name, salary, dept_id)
values (13,'Chor','Nore', 809898, 2);

Delimiter $$
CREATE TRIGGER employee_subtract
	After insert on employee_salary
    FOR EACH ROW
BEGIN
Insert into  employee_demographics (employee_id, first_name, last_name)
Values (NEW.employee_id, NEW.first_name,NEW.last_name);
End $$
Delimiter ;
	


