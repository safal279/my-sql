SELECT * FROM parks_and_recreation.employee_salary;



Select emp1.employee_id AS emp_fanta,
emp1.first_name AS first_name_fanta,
emp1.last_name AS last_name_fanta,
emp2.employee_id AS emp_fanta,
emp2.first_name AS first_name_fanta,
emp2.last_name AS last_name_fanta
FROM employee_salary emp1
Join employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
    
    Select*
    From employee_demographics dem
    JOIN employee_salary sal 
    on dem.employee_id = sal.employee_id
    Right JOIN parks_departments parks 
    on sal.employee_id = department_id;
    

      
    Select*
    From employee_demographics dem
    JOIN employee_salary sal 
    on dem.employee_id = sal.employee_id
    JOIN parks_departments parks
    on sal.dept_id = parks.department_id;
    
SELECT* FROM employee_demographics;
SELECT* FROM employee_salary;
SELECT* FROM parks_departments;