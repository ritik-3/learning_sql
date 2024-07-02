 use dummy;
 
 #wasq to compare the sales of a year with the previous one and also find the diff btw the current sale and previous sale
 
 select * from sales1;
 
select sales_employee,fiscal_year, sale,
	lag(sale,1,0) over (
		partition by sales_employee
		order by fiscal_year) as previousyearsale
from sales1;
 
 
with cte as(
select sales_employee,fiscal_year, sale,
	lag(sale,1,0) over (
		partition by sales_employee
		order by fiscal_year) as previousyearsale
from sales1
)
select *,sale-previousyearsale as saledifference from cte;
 
 
 select *, 
	lead(sale,1,0) over(
		partition by sales_employee
        order by fiscal_year) as nxtyear
from sales1;

with cte as(
 select *, 
	lead(sale,1,0) over(
		partition by sales_employee
        order by fiscal_year) as nxtyearsale
from sales1
)
select *, nxtyearsale-sale as sale_diff from cte;



with cte as(
 select *, 
	lead(sale,1,0) over(
		partition by sales_employee
        order by fiscal_year) as nxtyearsale
from sales1
)
select *, sale-nxtyearsale as sale_diff from cte;


