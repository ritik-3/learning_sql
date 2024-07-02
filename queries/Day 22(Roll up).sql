use dummy;
show tables;
select * from productlines; 
select * from products;
select * from orders;

create table sales
select productline , year(orderdate) as orderyear, sum(quantityordered*priceeach) as ordervalue
from orders o
inner join orderdetails oi on o.ordernumber=oi.ordernumber
inner join products p on oi.productcode=p.productcode
group by productline,orderyear; 


select * from sales;

#wsq to get productline and total order value by each prouctline

select productline, sum(ordervalue) as totalorderValue
from sales group by productline;

select sum(ordervalue) as tov
from sales;

#old method

select productline, sum(ordervalue) as totalorderValue
from sales group by productline
union
select null, sum(ordervalue) as tov
from sales;

#roll up new method
select productline, sum(ordervalue) as totalorderValue
from sales group by productline with rollup;