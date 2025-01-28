#joining 2 tables to create secret santa 
SELECT 
dem1.employee_id as santa_id,
dem1.first_name as santa_name,
dem1.last_name as santa_surname,
dem2.employee_id emp_id,
dem2.first_name emp_name,
dem2.last_name emp_surname

FROM employee_demographics dem1
Join employee_demographics dem2
on dem1.employee_id+7 = dem2.employee_id

;


# joining multiple tables

Select*
from employee_demographics tab1
join employee_salary tab2
on tab1.employee_id= tab2.employee_id
right join parks_departments tab3
on tab2.dept_id= tab3.department_id
;




SELECT * FROM Parks_and_Recreation.parks_departments;
