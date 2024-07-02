use dummy;

#wasq to retrive the top 5 sales represntative based on their total sales in the year 2003

select * from employees;

select * from orders;

select * from orderdetails;

select * from customers;

select employeenumber, firstname, lastname from employees;

select employeenumber, lastname,firstname,sales from
(select salesrepemployeenumber as employeenumber, 
sum(quantityordered*priceeach) as sales 
from orderdetails inner join 
using(ordernubmer)
inner join customers
using(customernumber)
where year(orderdate) = 2003
group by salesrepemployeenumber
order by sales desc
limit 5) as total_sales
inner join employees
using(employeenumber);


#wasq to map the customers with their respective sales reprentative
select * from employees;

select * from orders;

select * from orderdetails;

select * from customers;

select customername , concat(firstname," ",lastname) as salesname from customers
inner join employees 
on salesrepemployeenumber=employeeNumber;


