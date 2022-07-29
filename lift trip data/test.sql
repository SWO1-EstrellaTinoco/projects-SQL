SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;

select riders.first, riders.last, cars.model
from riders, cars;

Select *
from trips left join riders
  on trips.rider_id = riders.id;

select *
from trips inner join cars
  on trips.car_id = cars.id;

select *
from riders
union
select *
from riders2;

select avg(cost)
from trips;

select *
from riders
where total_trips < 500;

select count(*)
from cars
where status = 'active';

select *
from cars
order by trips_completed desc
limit 2;