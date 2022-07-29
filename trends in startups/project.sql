select *
from startups;

select count(*)
from  startups;

select sum(valuation)
from startups;

select max(raised)
from startups;

select max(raised)
from startups
where stage = 'Seed';

select min(founded)
from startups;

select avg(valuation)
from startups;

select avg(valuation)
from startups
group by category;

select round(avg(valuation), 2)
from startups
group by category;

select round(avg(valuation), 2)
from startups
group by category
order by avg(valuation) desc;

select category, count(*)
from startups
group by category;

select category, count(*)
from startups
group by category
having count(*) > 3;

select location, avg(employees)
from startups
group by location;

select location, avg(employees)
from startups
group by location
having avg(employees) > 500;