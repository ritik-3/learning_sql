use dummy;

select * from customers;
select * from orders;
select * from orderdetails;
select * from payments;
select * from productlinesales;
select * from products;
select * from employees;

#wasq that returns the client/customer name who has spent most amount of money (top 20)
select rank() over(order by amount desc) as top, customername ,amount from customers
join payments
using(customernumber); 

#wasq what are the names of products that were purchased the most by customers?
(select customernumber, customername, ordernumber from customers 
join orders
using(customernumber);

select customername, productname, count(ordernumber) from customers
join pranam
using(ordernumber),
(select ordernumber, productcode, productname from orderdetails
join products
using(productcode)) as pranam;

select customerName, p.productName, COUNT(o.orderNumber) AS orderCount
from customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
group by c.customerName, p.productName
order by c.customerName, p.productName;

with CustomerProductOrders as (
    select c.customerName, p.productName, count(o.orderNumber) as orderCount
    from 
	customers c
    join orders o on c.customerNumber = o.customerNumber
    join orderdetails od on o.orderNumber = od.orderNumber
    join products p on od.productCode = p.productCode
    group by c.customerName,p.productName)
select customerName, productName, orderCount,dense_rank() over (order by orderCount desc) as ranka
from CustomerProductOrders
order by ranka, customerName, productName;

#wasq that returns the average amount of payments collected from sales by each employee


#what is the customername for the first payment we recive each month 

select customername,month(paymentdate) from customers
join payments
using(customernumber);