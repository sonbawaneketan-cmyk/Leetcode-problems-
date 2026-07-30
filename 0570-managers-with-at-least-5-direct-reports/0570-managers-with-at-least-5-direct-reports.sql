# Write your MySQL query statement below
select e.name
from employee as e
join employee as ee
on e.id = ee.managerId
group by e.id,e.name
having count(ee.id) >=5