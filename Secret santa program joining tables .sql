# creating secret santa

Select*
From employee_demographics dem 
join employee_salary sal
on dem.employee_id + 1 =sal.employee_id
join parks_departments pd
on sal.dept_id= pd.department_id
;



Select dem.employee_id As ID, dem.first_name as Secret_sant, dem.last_name as LAST_NAME,
sal.employee_id as ID, sal.first_name as FIRST_NAME, sal.last_name as LAST_NAME

From employee_demographics dem 
join employee_salary sal
on dem.employee_id + 4 =sal.employee_id
join parks_departments pd
on sal.dept_id= pd.department_id
;

# Creating highly paid and old people tables

Select employee_id,first_name, last_name, 'old man' as label
from employee_demographics
where age > 40 and gender= 'male'
Union
Select employee_id,first_name, last_name, 'old woman' as label
from employee_demographics
where age > 40 and gender= 'female'

Union

select employee_id,first_name, last_name, 'rich' as label from employee_salary
where salary> 40000 
 
;

