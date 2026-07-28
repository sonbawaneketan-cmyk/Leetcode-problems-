select e.employee_id,
e.name,
count(es.reports_to) as reports_count,
round(avg(es.age)) as average_age
from employees as e
join employees as es
on e.employee_id = es.reports_to
group by  e.employee_id,e.name
order by e.employee_id

