select name as Customers

from Customers as c
left join Orders as o
on c.id = o.CustomerId
where customerId is null