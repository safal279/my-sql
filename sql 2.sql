SELECT S* from employee_demographics;
SELECT * FROM employee_salary;

Select first_name,
last_name,
'old man' AS label
from employee_demographics
where age > 60 And gender = 'male'
UNION
Select first_name,
last_name,
'highly paid allahhuakbar' AS label
From employee_salary
where salary > 60000
UNION
select first_name,
last_name,
'old lady' AS label 
from employee_demographics
where age > 50 And gender = 'female'
Order by first_name, last_name
;
