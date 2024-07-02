#create t0w cte and join them to get the sales representative located in the usa including therir office info 
use dummy;
select * from offices;
select * from employees;

with office as 
(select * from offices
where country = 'usa' ),
emp as
(select * from employees
where jobtitle = 'sales rep')
select concat(firstname, " ", lastname) as name, city, postalcode , country from office join emp using(officecode);