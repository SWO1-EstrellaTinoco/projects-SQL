-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

select max(population)
from population_years
where country = "Gabon";

select * 
from population_years
where year = 2005
order by population
limit 10;

select distinct country, population
from population_years
where population > 100 and year = 2010;

select * from population_years
where (year = 2000 or year = 2010) and country = 'Indonesia';