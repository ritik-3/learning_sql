use dummy;

#wasq to rank the sales employees by sale amount

select * from sales1;
SELECT RANK() OVER (ORDER BY sale DESC) as rnk, sales_employee,sale
FROM sales1;

SELECT Dense_RANK() OVER (ORDER BY sale DESC) as rnk, sales_employee,sale
FROM sales1;

SELECT RANK() OVER (ORDER BY sale DESC) as rnk ,
Dense_RANK() OVER (ORDER BY sale DESC) as d_rnk,
sales_employee,sale
FROM sales1;

#wasq to get the productline ord year and ord value

#find the percentile rank with each ordervalue for each productline
select * from productlines;
select * from orders;
select * from orderdetails;


create table productlinesales
select pl.productLine, year(o.orderDate) AS orderYear, sum(od.quantityOrdered * od.priceEach) as orderValue
from orders o
join orderdetails od ON o.orderNumber = od.orderNumber
join products p ON od.productCode = p.productCode
join productlines pl ON p.productLine = pl.productLine
group by pl.productLine, YEAR(o.orderDate)
order by pl.productLine, YEAR(o.orderDate);

select * from productlinesales;

#find the percentile rank with each ordervalue for each productline

select percent_rank() over(order by ordervalue) as p_rank, productline, orderyear from productlinesales;
