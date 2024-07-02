#wasq to get top 5 product by sales revenue in 2003 

use dummy;

select * from orders;
select * from orderdetails;

select productname, sales from 
	(select productcode, sum(priceeach*quantityordered) as sales
    from orders inner join orderdetails
    using(ordernumber)
    where year(orderdate)=2003
    group by productcode
    order by sales desc limit 5) as top5product
    inner join products using(productcode);
    
#wasq to get the customer who bought the product in 2003 into 3 group 
#platinum, gold, silver and you need to know the numner of cusotmer in each group with the following conditions 

select * from products;
select * from orders;
select * from orderdetails;


select customergroup, count(customergroup)from(
select customernumber , sum(priceeach*quantityordered) as sales,
case 
when sum(priceeach*quantityordered)<10000 then "silver"
when sum(priceeach*quantityordered)between 10000 and 100000 then "gold"
else"platinum"
end as customergroup
from orders inner join orderdetails
using(ordernumber)
where year(orderdate)=2003
group by customernumber)as subquery
group by customergroup;
    