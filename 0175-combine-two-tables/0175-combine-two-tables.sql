select p.firstName,
p.lastName,
a.city,
a.State
from person as p
left join address as a
on p.personId = a.personId
