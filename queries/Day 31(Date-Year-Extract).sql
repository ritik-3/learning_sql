use dummy;

################################################
###############     YEAR       #################
################################################

#wasq that retrives the number of orders shipped per year;

select * from orders;

select year(shippedDate) as s_y,count(ordernumber) AS COUNT
from orders
where shippeddate is not null
group by s_y;


SELECT year(shippedDate) as s_y,count(ordernumber) AS COUNT
FROM orders
WHERE STATUS = "SHIPPED"
GROUP BY s_y;

##########################################################
#############        EXTRACT            ##################
##########################################################

SELECT extract(YEAR FROM shippedDate) as s_y,count(ordernumber) AS COUNT
FROM orders
WHERE STATUS = "SHIPPED"
GROUP BY s_y;


#WASQ THAT RETURNS THE THE TOTAL ORDER VALUE BY MONTH IN 2004

SELECT * FROM ORDERDETAILS;

SELECT month(orderdate) as month, 
SUM(quantityordered*priceeach) as total_val
FROM orders o
inner join orderdetails oi
on o.ordernumber=oi.ordernumber
where year(orderdate)=2004
group by month;

SELECT extract(month from orderdate) as month, 
SUM(quantityordered*priceeach) as total_val
FROM orders o
inner join orderdetails oi
on o.ordernumber=oi.ordernumber
where extract(month from orderdate)=2004
group by month;

#############################################
########     string to integer   ############
#############################################

select str_to_date("12,04,2024",'%d,%m,%y');
select str_to_date("12042024",'%d%m%y');

select str_to_date("112200",'%h%i%s');
select str_to_date("11?22?00",'%h?%i?%s');
