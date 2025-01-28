#join

SELECT * FROM Parks_and_Recreation.employee_demographics;
SELECT * FROM Parks_and_Recreation.employee_salary;

SELECT * FROM Parks_and_Recreation.employee_demographics
Join parks_and_Recreation.employee_salary
on employee_demographics.employee_id=employee_salary.employee_id
;

#JOIN everything

SELECT * FROM employee_demographics AS A
Join employee_salary AS B
ON A.employee_id=B.employee_id
Order by A.first_name Asc
;


#INNER JOIN selecting specific ones
SELECT A.employee_id, age,occupation
FROM employee_demographics AS A
Join employee_salary AS B
ON A.employee_id=B.employee_id
Order by A.first_name Asc
;


# outer join ---- left and right join . where you match from left or right tables.

SELECT * FROM Parks_and_Recreation.employee_demographics;
SELECT * FROM Parks_and_Recreation.employee_salary;

SELECT * FROM employee_demographics AS A
right Join employee_salary AS B
ON A.employee_id=B.employee_id
Order by A.first_name
;

#self join
select* 
from employee_salary emp1
join employee_salary emp2
 on emp1.employee_id=emp2.employee_id
 ;


SELECT emp1.employee_id AS emp_santa, emp1.first_name AS first_name_santa, emp1.last_name As last_name_santa,
emp2.first_name AS first_name_santa, emp2.last_name As last_name_santa

FROM Parks_and_Recreation.employee_salary emp1
join employee_salary emp2
	ON emp1.employee_id+1= emp2.employee_id;
    
    
#join multiple tables

select *
from parks_departments pd

;







SELECT * FROM employee_demographics as A
Join employee_salary as B
ON A.employee_id=B.employee_id
inner Join parks_departments pd
on B.dep_id= pd.department_id
Order by A.first_name Asc

;
