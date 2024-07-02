#write a sql query to get the total order value of each year
use dummy;

show tables;
select * from orders;
select * from orderdetails;

select *
from orders o join orderdetails od
on o.ordernumber=od.ordernumber;

select year(orderdate)as pyear,sum(priceeach*quantityordered) as total
from orders o
inner join orderdetails oi
on o.ordernumber=oi.ordernumber
group by year(orderdate)
having pyear>2001;

select year(orderdate)as pyear,count(priceeach*quantityordered) as total
from orders o
inner join orderdetails oi
on o.ordernumber=oi.ordernumber
group by year(orderdate);

#write a sql query to get the ordernumber , no of items sold per order and the total sales for each order

select * from orderdetails;
select * from orders;

select ordernumber, sum(quantityordered) as itemcount,
sum(quatityordered*priceeach) as totalsales
from orderdetails
group by orderdetails;

select ordernumber, orderdate from orders
where status="Shipped";

select ordernumber, orderdate, status from orders
having status="Shipped";

select ordernumber, orderdate, status from orders
having status="Shipped";

SELECT ordernumber, orderdate, status 
FROM orders 
GROUP BY year(orderdate), ordernumber, orderdate, status 
HAVING status = 'Shipped';