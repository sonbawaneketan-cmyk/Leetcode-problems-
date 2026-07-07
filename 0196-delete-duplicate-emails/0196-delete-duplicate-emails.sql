delete e
from person as e
join person as m
on e.email = m.email
and e.id > m.id


