-- 1)
create Table orders (
	order_id serial primary key,
  person_id varchar(30),
  product_name varchar(30),
  product_price varchar(999),
  quantity varchar(999)
)

-- 2)
insert into orders (
	person_id,
  product_name,
  product_price,
  quantity
)
values (
	1,
  'skateboard',
  130,
  5
)
)
values (
	2,
  'T-shirt',
  20,
  100
)
values (
	3,
  'Pants',
  80,
  1
)
values (
	1,
  'Jacket',
  300,
  5
)
values (
	2,
  'Snowboard',
  600,
  10
)
-- 3)
select * from orders;

-- 4)
alter table orders
drop column quantity;

alter table orders
add quantity int;

update orders 
set quantity = 5 
where order_id = 1;

update orders 
set quantity = 50 
where order_id = 2;

update orders 
set quantity = 300 
where order_id = 3;

update orders 
set quantity = 70 
where order_id = 4;

update orders 
set quantity = 25
where order_id = 5;

select sum(quantity) from orders;

-- 5)
alter table orders
drop column product_price;

alter table orders
add product_price int;

update orders 
set product_price = 50 
where order_id = 1;

update orders 
set product_price = 200 
where order_id = 2;

update orders 
set product_price = 22 
where order_id = 3;

update orders 
set product_price = 100 
where order_id = 4;

update orders 
set product_price = 400 
where order_id = 5;

select sum(product_price) 
as total_product_price
from orders;

-- 6)
select sum(quantity*product_price)
from orders
where person_id = '1';