use dummy;

#wasq that returns the customers ans therir orders

select * from customers;

select * from orders;

select c.customernumber, c.customername, o.ordernumber
from customers c
join 
orders o
on c.customernumber=o.customernumber;

select customername,count(*) ordercount
from customers inner join orders using(customernumber)
group by customername
order by customername;

#########################################################################################################################
with cte as
(select customername,count(*) ordercount
from customers inner join orders using(customernumber)
group by customername
order by customername)
select customername, ordercount,
case ordercount
when 1 then "One thime customer"
when 2 then "repeated customer"
when 3 then "frequent customer"
else "loyal customer"
end as customertype
from cte;

#############################################################################################################################

#wasq to sort customers by state if state is not null or sort the country the state is null
select * from customers;

select customername, state , country from customers
order by(
case
when state is null then country
else state
end);

#wasq to count the order number by status
select status,count(ordernumber) from orders
group by status
with rollup;

select * from orders;


