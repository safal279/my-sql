Select gender, Avg(age), max(age), COUNT(age)
from employee_demographics
group by gender
;




#CTEs

Select gender, avg(salary), MAX(salary), MIN(salary), COUNT(salary)
From employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id = sal.employee_id
Group by gender
;	
