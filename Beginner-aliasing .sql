#limit and aliasing

SELECT * FROM Parks_and_Recreation.employee_demographics 
order by first_name deSC
LIMIT 3;

SELECT * FROM Parks_and_Recreation.employee_demographics 
order by age asc
limit 2,1;


#Aliasing 

SELECT avg(age),gender
FROM Parks_and_Recreation.employee_demographics 
group by gender
having avg(age)>15;