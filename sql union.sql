select first_name,last_name, 'old man' as label
from employee_demographics
where age > 50 AND gender = 'male'
union
select first_name,last_name, 'old lady' as label
from employee_demographics
where age > 40 AND gender = 'female'
union
select first_name,last_name, 'high pay machis' as label
from employee_salary
where salary>60000
Order by first_name, last_name
;