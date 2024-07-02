use dummy;
#order by[sorting data]
#select columnlist from tablename orderby columnname1[Asc/Desc],columnname2 (if no sorting is given it takes accending as default.

select contactlastname,contactfirstname from customers
order by contactlastname desc;

select contactlastname,contactfirstname from customers
order by contactlastname desc, contactfirstname asc;

select ordernumber, orderlinenumber,
(priceeach*quantityordered) from orderdetails
order by priceeach*quantityordered desc;

#after alliising

select ordernumber, orderlinenumber,
(priceeach*quantityordered) as ordertotal from orderdetails
order by ordertotal asc;

select* from orderdetails;

select * from employees;

#orderby takes null as the smallest values

select lastname,firstname,reportsTo from employees
order by reportsTo asc;


select lastname,firstname,reportsTo from employees
order by reportsTo desc;

select firstname, lastname,(concat(firstname , " " ,lastname))as fullnames
from employees
order by fullnames asc;