select * from store limit 10;

select count(distinct(order_id))
from store;

select count(distinct(customer_id))
from store;

select customer_id, customer_email, customer_phone
from store where customer_id = 1;

select item_1_id, item_1_name, item_1_price
from store
where item_1_id = 4;

create table customers as 
select distinct customer_id, customer_phone, customer_email
from store;

alter table customers
add primary key (customer_id);

create table items as
select distinct item_1_id as item_id, item_1_name as item_name, item_1_price as item_price
from store
union
select distinct item_2_id as item_id, item_2_name as item_name, item_2_price as item_price
from store
where item_2_id is not null
union 
select distinct item_3_id as item_id, item_3_name as item_name, item_3_price as item_price
from store
where item_3_id is not null;

alter table items
add primary key (item_id);

create table orders_items as 
select order_id, item_1_id as item_id
from store
union all
select order_id, item_2_id as item_id
from store where item_2_id is not null
union all
select order_id, item_3_id as item_id
from store where item_3_id is not null;

create table orders as 
select order_id, order_date, customer_id
from store;

alter table orders 
add primary key (order_id);

alter table orders
add foreign key (customer_id)
references customers (customer_id);

alter table orders_items
add foreign key (item_id)
references items(item_id);

alter table orders_items
add foreign key (order_id)
references orders(order_id);

select customer_email
from store
where order_date > '2019-08-25';

select customer_email
from customers, orders
where customers.customer_id = orders.customer_id
and orders.order_date > '2019-08-25';

WITH all_items AS (
SELECT item_1_id as item_id 
FROM store
UNION ALL
SELECT item_2_id as item_id
FROM store
WHERE item_2_id IS NOT NULL
UNION ALL
SELECT item_3_id as item_id
FROM store
WHERE item_3_id IS NOT NULL
)
SELECT item_id, COUNT(*)
FROM all_items
GROUP BY item_id;

SELECT item_id, COUNT(*)
FROM orders_items
GROUP BY item_id;





