#UNION
SELECT last_name, first_name FROM Parks_and_Recreation.employee_demographics
Union distinct
SELECT last_name, first_name FROM Parks_and_Recreation.employee_salary;

SELECT last_name, first_name FROM Parks_and_Recreation.employee_demographics
Union all
SELECT last_name, first_name FROM Parks_and_Recreation.employee_salary;


SELECT *FROM Parks_and_Recreation.employee_demographics
Union distinct
SELECT * FROM Parks_and_Recreation.employee_salary;


#Aliasing
SELECT first_name,last_name,'Old man' as label FROM Parks_and_Recreation.employee_demographics
  where age >40 and gender= 'male'  
UNION 
SELECT first_name,last_name, 'young man' as label FROM Parks_and_Recreation.employee_demographics 
	where age <40 and gender= 'male'
    
    UNION 

SELECT first_name,last_name,'Old woman' as label FROM Parks_and_Recreation.employee_demographics
  where age >40 and gender= 'female'
  Union
SELECT first_name,last_name, 'young woman' as label FROM Parks_and_Recreation.employee_demographics 
	where age <40 and gender= 'female'
    order by first_name

;


