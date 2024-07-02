use dummy;
select * from customers;

select customernumber,customername from customers
where customername like "a%";

select * from employees
where lastname like "%son";

select * from employees
where lastname like "%er%";

select * from employees
where firstname like "____";

select * from employees
where firstname like "T_M";

#limit & offset;

select * from employees limit 3;

select * from employees
where officecode = 1 limit 10;

select * from customers limit 5 offset 0;

select * from customers limit 5;

select * from customers limit 5 offset 5;

select * from customers limit 1,5;


select * from customers 
order by creditlimit desc limit 3; 

select * from customers 
order by creditlimit desc limit 1,1; 




