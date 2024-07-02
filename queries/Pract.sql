create database IDB;
use idb;

create table customers (
Customer_id int primary key,
Cust_name varchar(30) Not null,
City Varchar(20) default 'Bhopal',
Age int,
Grade int,
Phone_number varchar(20) not null unique,
SalesMan_Id int,
check (age>=18)
);
desc customers;


create table salesman(
Salesman_id int primary key,
Name varchar(20) not null unique,
City varchar(20),
Commission decimal(10,2),
foreign key (salesman_id) references customers(Customer_id)
);

desc salesman;

create table orders (
ord_no int primary key,
purch_amt decimal (10,2),
ord_date date,
customer_id int,
salesman_id int,
foreign key (customer_id) references customers(customer_id),
foreign key (salesman_id) references salesman(salesman_id)

);

desc orders;

alter table salesman drop Foreign key salesman_ibfk_1;

alter table salesman
add constraint
foreign key (salesman_id) references customers(salesman_id);

ALTER TABLE salesman
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (Salesman_id)
REFERENCES customers(Customer_id);
