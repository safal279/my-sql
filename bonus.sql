SELECT * FROM parks_and_recreation.employee_salary;

Select first_name, last_name, salary, occupation,
CASE 
When salary < 50000 then '5%'
When occupation = 'nurse' then '15%'
When salary > 50000 then '7%'
Else 
'10%'
end
from employee_salary
;


select * 
From employee_demographics
where employee_id in(select employee_id from employee_salary
where dept_id =6)
;


Select first_name, last_name, salary, occupation,
CASE
When salary<40000 then '7%' 
When occupation = 'nurse' then '20%' 
When salary>40000 then '10%' 
Else '8%' 
end as bonus
from employee_salary
;

Select first_name, last_name, salary,
Case
When salary<50000 then salary+salary*0.40
When occupation = 'nurse' then salary+salary*0.10
When salary>50000 then salary+salary*0.50
Else 'dogoo'
end as bonus
from employee_salary
;