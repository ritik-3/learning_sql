use dummy;

#wasq to get all the countries 

select country from customers;
select group_concat(country) from customers;

select group_concat(distinct country order by country desc) as Countries
from customers;

#wasq to return the salesstaff and list of cutomers

select * from employees;
select * from customers;

select e.firstname,e.lastname, c.customername
from employees e
inner join
customers c 
on e.employeenumber=c.salesrepemployeenumber
order by firstname,lastname;

###########################
select employeenumber, firstname,lastname,
group_concat(distinct customername
order by customername asc) customers
from employees e inner join
customers c
on e.employeenumber=c.salesrepemployeenumber
group by employeenumber
order by firstname,lastname;



#coalesce function vs ifnull

select coalesce(null,"N/A");
select ifnull(null,"N/A");

select coalesce(null,null,nul,null,"N/A"); #takes n number of argument

select ifnull(null,"N/A"); #takes only two "2" argument


#wasq returns the customername city, state, country

select customername,city, state, country from customers;

select customername,city, coalesce(state, "N/A") as State, country from customers;

select customername,city, ifnull(state,"N/A") as state, country from customers;


