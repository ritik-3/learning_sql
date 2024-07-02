use dummy;
show tables;
select * from customers;
select * from orders;

select c.customernumber,c.customername, o.status
from customers c
join orders o
on c.customernumber=o.customernumber
order by o.status;