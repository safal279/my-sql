-- subqueries: query within a query

select *
From employee_demographics
where employee_id in  (select employee_id from employee_salary
						where dept_id =1)
;

Select * From employee_demographics
where employee_id in (select employee_id
from employee_salary
where dept_id =1)
;

select first_name,salary, avg(salary) 
from employee_salary
group by first_name, salary;


with safal as
(
select first_name,salary,
(select avg(salary) 
from employee_salary) as AVG_salary
from employee_salary
)
select * from safal
;


select gender, avg(age),max(age), min(age), count(age)
from employee_demographics
group by gender;	

select gender,
employee_demographics
;





