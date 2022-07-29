select *
from parts
limit 10;

alter table parts
alter column code set not null;

alter table parts add unique(code);

update parts
set description = 'undefined'
where description is null;

alter table parts
alter column description set not null;

insert into parts values
  (54,'undefined', 'V1-009', 9);


alter table reorder_options
alter column price_usd set not null;

alter table reorder_options 
alter column quantity set not null;


alter table reorder_options
add check (price_usd > 0 and quantity > 0);


alter table reorder_options
add check(price_usd/quantity between 0.02 and 25.00);


alter table parts 
add primary key (id);

alter table reorder_options
add foreign key (part_id) references parts(id);

alter table locations
add unique (part_id, location);


alter table locations 
add foreign key (part_id) references parts(id);


alter table parts
add foreign key (manufacturer_id) references manufacturers(id);


insert into manufacturers values
(11, 'Pip-NNC Industrial');

select * from manufacturers;


update parts
set manufacturer_id = 11
where manufacturer_id in (1, 2);

