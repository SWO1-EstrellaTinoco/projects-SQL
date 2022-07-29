create table friends (
  id integer,
  name text,
  birthday date
);

insert into friends
values (1,'Ororo Munroe', '05/30/1940');

insert into friends
values 
(2, 'Alma Cómitre', '09/06/1999'),
(3, 'Pilar Lara', '01/01/1961');

Update friends
set name = 'Storm'
where id = 1;

alter table friends
add column email text;

update friends
set email = 'storm@codecademy.com'
where id = 1;

update friends
set email = 'almaemail@host.com'
where id = 2;

update friends
set email = 'pilaremail@host.com'
where id = 3;

delete from friends where name = 'Storm';

select * from friends;