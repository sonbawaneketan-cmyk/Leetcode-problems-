# Write your MySQL query statement below
select 
n.unique_id,
e.name
from employees as e
left join employeeUNI as n
on e.id =n.id
