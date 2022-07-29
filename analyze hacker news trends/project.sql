select title, score
from hacker_news
order by score desc
limit 5;

select sum(score)
from hacker_news;

select user, sum(score)
from hacker_news
group by user
having sum(score) > 200;

select (309+ 304 + 282 + 517) / 6366.0;

select user, count(*)
from hacker_news
where url like '%watch?v=dQw4w9WgXcQ%'
group by user
order by count(*) desc;

select case
  when url like '%github.com%' then 'GitHub'
  when url like '%medium.com%' then 'Medium'
  when url like '%nytimes.com%' then 'New York Times'
  else 'Other'
  end as 'Source',
  count(*)
from hacker_news
group by 1;

select timestamp
from hacker_news
limit 10;

select timestamp, strftime('%H', timestamp)
from hacker_news
group by 1
limit 20;

select strftime('%H', timestamp), avg(score), count(*)
from hacker_news
group by 1
order by 1;

SELECT strftime('%H', timestamp) as Hour, 
  round(AVG(score), 2) as 'Average Score',
  COUNT(*) as 'Number of Stories'
FROM hacker_news
GROUP BY 1
ORDER BY 1;