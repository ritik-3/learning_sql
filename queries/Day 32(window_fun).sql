use dummy;
create table sales1(
	sales_employee varchar(50) not null,
    fiscal_year int not null,
    sale decimal(14,2) not null
    );
    
insert into sales1 (sales_employee, fiscal_year, sale) values
('Bob',2016,100),
('Bob',2017,150),
('Bob',2018,200),
('Alice',2016,150),
('Alice',2017,100),
('Alice',2018,200),
('Jhon',2016,200),
('Jhon',2017,150),
('Jhon',2018,250)
;

#########################################
########################################

select * from sales1;

select sum(sale) from sales1;

select fiscal_year,sum(sale) from sales1
group by fiscal_year;

select fiscal_year,sale,sum(sale) over() from sales1;

select *,
sum(sale) over(partition by fiscal_year) as year_total,
sum(sale) over() as grand_total 
from sales1;

select *,
sum(sale) over(partition by fiscal_year) as year_total 
from sales1;

select *,
max(sale) over(partition by fiscal_year) as year_total 
from sales1;

select *,
count(sale) over(partition by fiscal_year order by sales_employee) as no_of_years 
from sales1;

select *,
sum(sale) over(partition by fiscal_year order by fiscal_year) as year_total 
from sales1;

select *, min(sale) over()
from sales1;

select *,
min(sale) over(),
sum(sale) over(),
max(sale) over(),
count(sale) over(),
avg(sale) over()
from sales1;

