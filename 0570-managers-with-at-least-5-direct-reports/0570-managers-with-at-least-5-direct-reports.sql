select e.name 
from employee as e
inner join employee as e2

on e.id = E2.managerId 
group by e2.managerid 
having count(e2.managerid )>=5
