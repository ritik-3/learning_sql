
use dummy;

CREATE TABLE overtime (
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    hours INT NOT NULL,
    PRIMARY KEY (employee_name , department)
);
INSERT INTO overtime(employee_name, department, hours)
VALUES('Diane Murphy','Accounting',37),
('Mary Patterson','Accounting',74),
('Jeff Firrelli','Accounting',40),
('William Patterson','Finance',58),
('Gerard Bondur','Finance',47),
('Anthony Bow','Finance',66),
('Leslie Jennings','IT',90),
('Leslie Thompson','IT',88),
('Julie Firrelli','Sales',81),
('Steve Patterson','Sales',29),
('Foon Yue Tseng','Sales',65),
('George Vanauf','Marketing',89),
('Loui Bondur','Marketing',49),
('Gerard Hernandez','Marketing',66),
('Pamela Castillo','SCM',96),
('Larry Bott','SCM',100),
('Barry Jones','SCM',65);

#wasq to get the employee name, hour and emoployee who has least hour
select *, first_value(employee_name) over(order by hours) as least_hour_employee from overtime;

#wasq to find the employee how has the least overtime in each department
select *, first_value(employee_name) over(partition by department order by hours) as least_hour_employee from overtime;

#wasq to return the employees who work in the offices located in the usa

select * from employees;
select * from offices;

select employeeNumber, firstname, lastname from employees
join offices
using(officecode)
where country = "usa";

select firstname, lastname 
from employees 
where officecode in 
	(select officecode 
    from offices 
    where country ="Usa");
    
#wasq  to find the customers how have not placed any oreders

select * from customers;
select * from orders;

select customername from customers 
left join
orders o
using(customernumber)
where o.customernumber is null;

select customername 
from customers
where customername not in 
	(select distinct customernumber 
    from orders);
    
#wasq to find the max min and the avg no of items in sales order

select * from orderdetails;

select max(item), min(item), avg(item) from ordercount
	(select oredrnumber), count(ordernumber) as item 
    from orderdetails 
    group by ordernumber) as ordercount; 