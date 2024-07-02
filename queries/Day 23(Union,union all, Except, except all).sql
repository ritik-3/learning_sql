#wsq to combine the firstname and lastname of employess and customuers into a single result set 

use dummy;
select * from employees;
select * from customers;

select concat(contactlastname, " " ,contactlastname) as name from customers
union 
select concat(firstname, " ", lastname) as name from employees;

select concat(contactlastname, " " ,contactlastname) as name from customers
union 
select concat(firstname, " ", lastname) as name from employees
order by name;

create table T1 (Id int);
create table T2 (id int);

insert into T1 (id) values
(1),(2),(3);

insert into T2 (id) values
(2),(3),(4);

select * from T1
union 
select * from T1;

select * from T1
union all
select * from T1;

select * from T1
intersect 
select * from t2;

#except 
select * from t1
except 
select * from T2;

#wsq to get the firstname that appears in the employess table ut do not apppears in the  customers table;
select firstname from employees 
except
select contactfirstname from customers;

select firstname from employees 
except all
select contactfirstname from customers;