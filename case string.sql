SELECT * FROM parks_and_recreation.employee_demographics;

Select first_name, last_name,age,
case
when age > 30 then 'don'
when age < 20 then 'no don'
else
'big don'
end
from employee_demographics;

Select first_name, last_name, age,
CASE
when age < 30 then 'mahahawa'
when first_name = 'april' then 'oppa'
when first_name = 'leslie' then 'aunty'
when age > 30 then 'hawa'
Else
'aayaaa'
end
from employee_demographics
;

Select first_name, last_name, age,
CASE
when age > 20 then 'aaaayaaa'
when first_name = 'donna' then 'budi aunty'
end 
from employee_demographics
;