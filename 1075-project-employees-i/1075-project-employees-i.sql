select p.project_id,
cast(AVG(experience_years) AS decimal(10,2))average_years
from project as p 
join employee as e
on p.employee_id = e.employee_id
group by project_id 
