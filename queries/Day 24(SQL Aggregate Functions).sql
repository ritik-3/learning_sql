#wasq to calculate the average buy prise of all products

use dummy;
select * from products;

select sum(buyprice) from products;

select productname, sum(buyprice) as TOV 
from products
group by productname
with rollup;

select productline,avg(buyprice) as average from products 
group by productline;

select productline,count(buyprice) as Counts from products 
group by productline;

select avg(buyprice) as average from products;

#wasq to get the total ordervalue of each product
select productname,sum(buyprice) as TOV from products 
group by productname;

select productcode,sum(buyprice) as TOV from products 
group by productcode;

select min(buyprice) as MIN
from products;

select max(buyprice) as MAX
from products;

select count(buyprice) as count from  products;

