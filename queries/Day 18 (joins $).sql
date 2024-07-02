use joins;
use dummy;
select * from customers;
select * from orders;

#to fetch the records of a custo who placed an order

select o1.customernumber,customername from customers c1 inner join orders o1
on c1.customernumber=o1.customernumber;

select c1.customernumber,customername from customers c1 left join orders o1
on c1.customernumber=o1.customernumber
where o1.customernumber is null;

select customername, orderdate,(priceeach*quantityordered) as ordervalue
from customers c join orders o
on c.customernumber=o.customernumber
join orderdetails oi on o.ordernumbers=oi.ordernumbers;