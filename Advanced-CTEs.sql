-- Common table expression CTE's: allows to define sub query block
-- define query within a query to make it standarized and formatted. bette than sub query

Select * from employee_salary;
Select * from employee_demographics;

With AASHISH as
(
Select gender, avg(salary), max(salary), count(salary)
from employee_demographics dem
join employee_salary sal
on sal.employee_id= dem.employee_id
group by gender
)
select * from Aashish
;

WITH aashish as
(
Select employee_id,salary from employee_salary
),
safal as
(select employee_id, first_name, last_name
from employee_demographics
)

select * from aashish
join safal 
on aashish.employee_id= safal.employee_id
;

Select * from employee_demographics;