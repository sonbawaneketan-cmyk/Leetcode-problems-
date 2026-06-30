select name 
from salesperson 
where sales_id not in
(select o.sales_id
from orders as o
join company as c
on o.com_id = c.com_id
where c.name ='RED')
