#WINDOW FUNCTIONS

Select gender, avg(salary) AS AVG_SALARY
FROM employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id= sal.employee_id
    
group by gender
;

Select dem.first_name,gender, avg(salary) OVER(Partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
	on dem.employee_id= sal.employee_id;
    

Select  dem.first_name, sal.last_name, gender,sal.salary,
avg(salary) over(partition by gender order by dem.employee_id) as rolling_total
From employee_demographics dem
join employee_salary sal
on dem.employee_id= sal.employee_id
;

Select gender, dem.first_name, sal.last_name, 
sum(salary) over(partition by gender)
From employee_demographics dem
join employee_salary sal
on dem.employee_id= sal.employee_id
;

Select  dem.first_name, sal.last_name, gender,sal.salary,
avg(salary) over(partition by gender order by dem.employee_id) as rolling_total,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary asc) as rank_num,
dense_rank() over (partition by gender order by salary desc) as dense_num

From employee_demographics dem
join employee_salary sal
on dem.employee_id= sal.employee_id
;

