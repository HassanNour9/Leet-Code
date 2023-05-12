SELECT DISTINCT a.Id
FROM Weather a,Weather b
WHERE a.Temperature > b.Temperature
AND DATEDIFF(a.Recorddate, b.Recorddate) = 1;
***Another Solution***
with cte as(
select id,recordDate,temperature,lag(temperature) over (order by recordDate asc) as prev_temp,
    lag(recordDate) over(order by recordDate asc) as prev_date
from Weather)
select id from cte
where temperature > prev_temp and recordDate-prev_date=1
