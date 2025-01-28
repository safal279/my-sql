SELECT first_name, last_name, salary, 'Dhani suddo suddi myachis'  
FROM employee_salary
where salary> 50000 

union
SELECT first_name, last_name, 'budho manxe'
FROM employee_demographics
where age> 40 and gender ='Male'

union
SELECT first_name, last_name, 'budi manxe'
FROM employee_demographics
where age> 40 and gender ='Female'

;




SELECT first_name,last_name, 'budho manxe' as label
FROM Parks_and_Recreation.employee_demographics
where age> 40 and gender ='Male'

UNION

SELECT first_name, last_name, 'budi manxe' as label
FROM Parks_and_Recreation.employee_demographics
where age> 40 and gender ='Female'

UNION

SELECT first_name, last_name, 'Dhani suddo myachis'  as label
FROM Parks_and_Recreation.employee_salary
where salary> 50000 

;
