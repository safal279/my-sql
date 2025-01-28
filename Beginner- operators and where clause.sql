SELECT * FROM Parks_and_Recreation.employee_salary;
Select * FROM sys.sys_config;

Select * From sys.sys_config,Parks_and_Recreation.employee_demographics;

Select variable, value, value +10
From sys.sys_config;

#WHERE CLAUSE
Select first_name From employee_salary
where first_name="Aashish";

#USING AND OR NOT OPERATORS
Select first_name, salary from employee_salary
where salary>20000 and first_name= "Aashish";


Select first_name, last_name, age from employee_demographics
where age>20
or
last_name= "Gopali";

#like statement -- % and _
Select first_name, last_name, age from employee_demographics
where first_name like 'A%'
;
Select first_name, last_name, age from employee_demographics
where first_name like '%%A%'
;
Select first_name, last_name, age from employee_demographics
where first_name like 'A__'
;
Select first_name, last_name, age from employee_demographics
where first_name like 'A%%'
;


