-- 1)
insert into artist (
	name
)
values (
	'steven'
);
values (
	'John'
);
values (
	'Jack'
);

-- 2)
select * from artist
order by name desc
limit 10;

-- 3)
select * from artist
order by name 
limit 5;

-- 4)
select name
from artist
where name like 'Black%';

-- 5)
select name
from artist
where name like '%Black%';