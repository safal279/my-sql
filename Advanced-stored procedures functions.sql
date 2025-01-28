-- Stored Procedures # way to save sql code to reuse over and over again withing your stored procedures
DELIMITER $$
CREATE PROCEDURE large_salaries4()

Begin
Select *
From employee_salary
where salary < 50000;
Select *
From employee_salary
where salary > 50000;
END $$
DELIMITER ;


CALL large_salaries();

CALL large_salaries2();

CALL large_salaries4();



-- PARAMETER


DELIMITER $$
CREATE PROCEDURE large_salaries6(watchamacallit INT)

Begin
Select salary
From employee_salary
where employee_id = whatchamacallit
;

END $$
DELIMITER ;

CAll large_salaries6(1);
