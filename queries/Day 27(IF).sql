use dummy;

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

with cte as
(select customername,count(*) ordercount
from customers inner join orders using(customernumber)
group by customername
order by customername)
select customername, ordercount,
if(ordercount = 1,"One thime customer", 
	if(ordercount = 2,"repeated customer",
		if(ordercount=3,"frequent customer","loyal customer")))
as customertype
from cte;

select
sum(if(status="shipped",1,0))"shipped",
sum(if(Status="on hold",1,0))"on hold",
sum(if(Status="Disputed",1,0))"disputed",
sum(if(Status="cancelled",1,0))"cancelled",
sum(if(Status="resolved",1,0))"resolved",
sum(if(Status="in process",1,0))"in process",
count(*) as totalorder
from orders; 

select customername, state , country from customers
order by(
case
when state is null then country
else state
end);

select customername, state , country from customers
order by(
if(state is null, country,state)
);

