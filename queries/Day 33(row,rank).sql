#wasq to assign a sequential number to each row from product table

use dummy;

select * from products;

SELECT productname, count(*) OVER () AS seq FROM products;

SELECT ROW_NUMBER() OVER (ORDER BY productname) AS seq, productname, msrp FROM products;

#wasq to find the top 3 products by productline that have the highest inventory 

select ROW_NUMBER() OVER (partition by productline order by quantityinstock desc) as seq, productline, productname, quantityinstock 
from products;

#top 3

with cte as
(select ROW_NUMBER() OVER (partition by productline order by quantityinstock desc) as seq, productline, productname, quantityinstock 
from products)
select seq, productname,productline,quantityinstock from cte where seq<=3;

#wasq to find the top 3 heighest valued order in each year

select * from orders;
select * from orderdetails;

select o.ordernumber, year(o.orderdate) as pyear, sum(oi.quantityOrdered*oi.priceEach) as ord_value, rank() OVER (partition by year(orderdate) order by priceeach)
from orders o 
join 
orderdetails oi
on o.ordernumber=oi.ordernumber
GROUP BY o.ordernumber, YEAR(o.orderdate);
