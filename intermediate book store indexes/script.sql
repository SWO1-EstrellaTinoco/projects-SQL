select * from pg_indexes where tablename = 'customers';
select * from pg_indexes where tablename = 'orders';
select * from pg_indexes where tablename = 'books';

explain analyze select * from orders where quantity > 18;

create index orders_quantity_more_18 on orders(quantity) where quantity > 18;

explain analyze select * from orders where quantity > 18;

explain analyze select * from customers where years_old > 30;

alter table customers add constraint customers_pkey primary key (customer_id);

explain analyze select * from customers where years_old > 30;

select * from customers limit 10;

cluster customers using customers_pkey;

select * from customers limit 10;

explain analyze select customer_id, book_id from orders;

create index customer_id_book_id on orders(customer_id, book_id);

explain analyze select customer_id, book_id from orders;

drop index customer_id_book_id;

explain analyze select customer_id, book_id, quantity from orders;

create index customer_id_book_id_quantity on orders (customer_id, book_id, quantity);

explain analyze select customer_id, book_id, quantity from orders;

explain analyze select author, title from books;

create index author_title on books (author, title);

explain analyze select author, title from books;

explain analyze select * from orders where (quantity * price_base) > 100;

create index total_price on orders ((quantity * price_base));

explain analyze select * from orders where (quantity * price_base) > 100;

select * from pg_indexes
where tablename in ('customers', 'books', 'orders')
order by tablename, indexname;

drop index if exists books_author_idx;

drop index if exists	customer_id_book_id_quantity;

CREATE INDEX customers_last_name_first_name_email_address ON customers (last_name, first_name, email_address);

SELECT *
FROM pg_indexes
WHERE tablename IN ('customers', 'books', 'orders')
ORDER BY tablename, indexname;