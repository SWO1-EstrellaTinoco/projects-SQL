select * from books limit 10;

create index customer_id_idx on orders (customer_id);
create index book_id_idx on orders (book_id);

select * from pg_indexes where tablename = 'customers';
select * from pg_indexes where tablename = 'books';
select * from pg_indexes where tablename = 'orders';


explain analyze select original_language, title, sales_in_millions
from books where original_language = 'French';

select pg_size_pretty (pg_total_relation_size('books'));

create index original_language_title_copies_idx on books (original_language, title, sales_in_millions);

explain analyze select original_language, title, sales_in_millions
from books where original_language = 'French';

select pg_size_pretty (pg_total_relation_size('books'));

drop index original_language_title_copies_idx;
drop index customer_id_idx;
drop index book_id_idx;


select now();

\COPY orders from 'orders_add.txt' DELIMITER ',' CSV HEADER;

select now();

create index customer_id_idx on orders (customer_id);
create index book_id_idx on orders (book_id);