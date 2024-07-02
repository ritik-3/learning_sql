use dummy;
#write a sql query to get the total amount of all orders by each order number.

select * from orderdetails;


select ordernumber,(quantityordered*priceeach) as total from
orderdetails order by total desc;

#write a sql querry to find all employees whose job title are "salaesrep"

select * from employees;

select  employeenumber,lastname,firstname,jobtitle from employees
where jobtitle = "Sales Rep"
order by firstname asc;

explain select  employeenumber,lastname,firstname,jobtitle from employees
where jobtitle = "Sales Rep";

#where clause with and operator

select employeenumber,lastname,firstname,jobtitle,officecode from employees
where jobtitle = "Sales Rep" and officecode = 1;

#where clause with or operator 

select employeenumber,lastname,firstname,jobtitle,officecode from employees
where jobtitle = "Sales Rep" or officecode = 1
order by jobtitle asc;

#between operator

select employeenumber, lastname, firstname, officecode from employees
where officecode between 1 and 3;

select employeenumber, lastname, firstname, officecode from employees
where officecode between 3 and 1; #nahi chalega dont worry


#  in operator  (imp hai___)
select employeenumber, lastname, firstname, officecode from employees
where officecode in(1,3,5);

#customernumber, customername, phone from france and use

select * from customers;


select customernumber, customername, phone, country from customers
where country in("France","USA");

select * from employees;

select firstname,lastname,jobtitle from employees
where jobtitle!="sales Rep"; 

select * from employees
where reportsto is null; #(null ke sath "=" use nahi hota hai, only "is" ya "is not")

