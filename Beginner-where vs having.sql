#Group By 

Select *from Parks_and_Recreation.employee_demographics;

Select gender From Parks_and_Recreation.employee_demographics
group by gender;

Select age,gender From Parks_and_Recreation.employee_demographics
Group by gender,age;

Select age,avg(age),gender, age+1, age*10 From Parks_and_Recreation.employee_demographics
Group by gender,age;

Select first_name,last_name,salary From Parks_and_Recreation.employee_salary
where salary > 3000 and last_name like '%a%';

SELECT * FROM Parks_and_Recreation.employee_salary;

select Avg(salary),min(salary), max(salary),first_name From Parks_and_Recreation.employee_salary
group by first_name;

#ORDER BY
SELECT * FROM Parks_and_Recreation.employee_salary;

select *From Parks_and_Recreation.employee_demographics
order by first_name ASC;

select *From Parks_and_Recreation.employee_demographics
order by birth_date ASC;

SELECT occupation, avg(salary) FROM Parks_and_Recreation.employee_salary
where occupation like '%manager%'
group by occupation;

select first_name, avg(age)  from Parks_and_Recreation.employee_demographics
 group by first_name
order by first_name ASC;
