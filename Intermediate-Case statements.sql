#case statements

#where you priny age <=30 printing young + when age is between 31 and 50 then 'old'


Select first_name, last_name ,
case
when age<=30 then 'young'
when age between 31 and 50 then 'old'
when age > 50 then 'death bed'
end
AS age_bracket
from employee_demographics
;

# bonus and pay increase.  determine bonus and how much.alter 
-- pay increase 
-- < 50000 = 5%
-- > 50000= 7%
-- Finance = 10% bonus

Select first_name, last_name, salary,
case
when salary < 50000 then 'bonus 5%'
when salary > 50000 then 'bonus 7%'
when occupation = 'Finance' then '10%'
else 'garib'
end as bonus
From employee_salary

Union
Select first_name, last_name, salary,
case
when salary < 50000 then salary+(salary*0.05)
when salary > 50000 then salary+(salary*0.07)
when occupation = 'Nurse' then salary+(salary*0.010)
else
'garib'
end as bonus
From employee_salary
;
