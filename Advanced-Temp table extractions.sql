-- Temp Tables MYSQL

CREATE TEMPORARY TABLE  temp_table
(first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)

)
;

Insert into temp_table
values('Aashish','Gopali','Number 23');

Select * From temp_table;



-- Retreiving data from another table in temp table

Create Temporary Table salary_over_50k
Select * from employee_salary
where salary >= 50000;

select* from salary_over_50k;


