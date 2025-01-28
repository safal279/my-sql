SELECT 
    salary,
    (SELECT AVG(salary) FROM employee_salary) AS avg_salary
FROM 
    employee_salary;




select first_name, salary,
(select avg(salary) From employee_salary)
from employee_salary;

select first_name, age,
(select avg(age) from employee_demographics) as Wow
from employee_demographics;

select age




