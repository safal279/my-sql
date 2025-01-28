-- triggers 
select *
from employee_demographics;

select *from employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW 
BEGIN
	INSERT INTO employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ; 


INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'BIshal','Shrestha','Guffadi', 50000, null)
;

INSERT INTO employee_salary(employee_id, first_name,last_name,occupation, salary, dept_id)
VALUES(14,'Russ','Nguyen','rapper',null ,null);

-- events

SELECT * FROM employee_demographics;


Delimiter $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
delete
	FROM employee_demographics
    where age >60;
end $$
delimiter ;




SHOW VARIABLES LIKE 'event%';





