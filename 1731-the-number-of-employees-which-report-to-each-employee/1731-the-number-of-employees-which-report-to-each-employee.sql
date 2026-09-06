# Write your MySQL query statement below
select e.employee_id,
e.name,
count(es.reports_to) as  reports_count,
round(avg(es.age),0)average_age


from employees as e

join employees as es
on e.employee_id = es.reports_to
group by employee_id 
order by e.employee_id 