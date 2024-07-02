use dummy;

delimiter $$
create procedure get_cust_info0()
begin
select customernumber,customername,city,state,country,postalcode from customers;
end $$

delimiter ;

call get_cust_info0();

#############################################################

delimiter $$
create procedure get_cust_info1(in country varchar(20))
begin
select customernumber,customername,city,state,country,postalcode from customers c
where c.country=country;
end $$

delimiter ;

call get_cust_info1("usa");

#####################################################
#####################################################


#create a pocedure to get the total order value by each product line

select * from productlines;
select * from products;
select * from orderdetails;
select * from productlinesales;


delimiter $$
create procedure tpv()
begin 
select productline , sum(quantityordered*priceeach) as total_ord_value from products
join orderdetails
using(productcode)
group by productline;
end $$
delimiter ;

call tpv();

###################################################

delimiter $$
create procedure tpv_p(in productcatagory varchar(20))
begin 
select productline , sum(quantityordered*priceeach) as total_ord_value from products
join orderdetails
using(productcode)
where productline=productcatagory
group by productline;
end $$
delimiter ;

call tpv_p("motorcycles");

#########################################################
delimiter $$
create procedure get_all_ordered(in status varchar(20), out total int)
begin
select count(ordernumber) into total from orders o
where o.status=status;
end $$
delimiter ;

call get_all_ordered("cancelled", @total);
select @total as statuscount;