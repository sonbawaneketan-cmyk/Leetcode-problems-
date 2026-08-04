SELECT name as Customers 
from customers as c
left join orders as o 
on c.id = o.customerId
where customerId is null