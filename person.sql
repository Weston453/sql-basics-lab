CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age VARCHAR(3),
    height VARCHAR(3)
)
-- 2)
INSERT into person (
    first_name,
  last_name,
  age,
  height
)
values (
	'Bob',
  'Builder',
  40,
  150
);
values (
	'Jerry',
  'Smith',
  60,
  170
);
values (
	'Dan',
  'Man',
  30,
  200
);
values (
	'Jim',
  'Halpert',
  34,
  220
);
values (
	'Mike',
  'Scott',
  48,
  160
);

Select * FROM person;

-- 3)
select * FROM person
order by height desc;

-- 4)
select * FROM person
order by height;

-- 5)
select * FROM person
order by age desc;

-- 6)
select * from person 
where age > '20';

-- 7)
select * from person 
where age = '18';

-- 8)
select * from person 
where age < '20' or age > '30';

-- 9)
select * from person where age != '27';

-- 10)
ALTER Table person
add fav_color VARCHAR(20);

update person set fav_color = 'blue'
where person_id = 2;

update person set fav_color = 'green'
where person_id = 5;

update person set fav_color = 'yellow'
where person_id = 3;

select * from person where
fav_color != 'red';

-- 11)
select * from person where
fav_color != 'red' and != 'blue';

-- 12)
select * from person where
fav_color = 'orange' or fav_color = 'green';

-- 13)
select * from person where
fav_color IN ('orange','green','blue');

-- 14)
select * from person where
fav_color IN ('yellow','purple');
