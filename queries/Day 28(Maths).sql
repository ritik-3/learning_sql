#          MATHS

#abs()
#floor()
#ceil()
#mod()

select abs(-10),abs(0),abs(10),abs(4-10);

#wasq to find the buyprice - productcode mrsp from the productlable within its productline
use dummy;

select * from products;

select productcode, abs((buyprice-msrp)) as new_price from products;


select floor(5/2);


select ceil(5/2);

select productcode, floor(abs((buyprice-msrp))) as new_price from products;


#wasq that returns pricce by each product line 

select * from products;

select productline, floor(avg(buyprice)) as average from products
group by productline;

#wasq that returns the average manufactresrs suggested retail price that is mrsp of all products by each productline

select productline, ceil(avg(msrp)) from products
group by productline;

##  mod() #######

select mod(5,2);
select mod(2,5);

select ordernumber, sum(quantityordered),
if(mod(sum(quantityordered),2),"even","odd") as even_odd
from orderdetails
group by ordernumber;

select ordernumber, sum(quantityordered),
case 
when mod(sum(quantityordered),2)=0 then "even"
else "odd" end as even_odd
from orderdetails
group by ordernumber;

########## TRUNCATE    #######

#wasq that retunrs the avg buy price 

use dummy;

select * from products;

select truncate(avg(buyprice),2) from products;

select truncate(199.99, -2);


########################################################################

################ ROUND OFF  ##########

SELECT ROUND(199.99,1);
SELECT ROUND(195.44,1);
SELECT ROUND(195.46,1);
SELECT ROUND(199.60,1);
SELECT ROUND(199.99) #DEFAULT IS 0

