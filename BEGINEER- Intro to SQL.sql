-- This is the first mySQL program where we use Parks and recreation database to pull datas from. And get the output we want targeting
-- specific field datas where * means everything and distinct gives us distinctive datas in the database.

SELECT * 
  FROM Parks_and_Recreation.employee_demographics;

Select department_name 
  From Parks_and_Recreation.parks_departments;

SELECT employee_id, first_name, occupation 
  From Parks_and_Recreation.employee_salary;

SELECT* 
  FROM Parks_and_Recreation.parks_departments,employee_salary;

SELECT * 
  FROM Parks_and_Recreation.parks_departments,employee_demographics;

SELECT distinct gender 
  FROM Parks_and_Recreation.employee_demographics;
