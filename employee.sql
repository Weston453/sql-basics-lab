-- 1)
select first_name, last_name
from employee
where city = 'calgary';

-- 2)
select max(birth_date)
from employee;

-- 3)
select min(birth_date)
from employee;

-- 4)
select * from employee
where reports_to = '2';

-- 5)
select city, count(*)
from employee
group by city;