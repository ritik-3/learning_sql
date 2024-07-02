create database Azn;
use azn;
create table users (
u_id int primary key,
u_name varchar(20) Not Null,
u_age tinyint,
Mobile varchar(20) unique,
City varchar(20) default "Bhopal",
check (u_age>18)
);

desc users;
insert into users (u_id, u_name, u_age, Mobile) values
(1, 'Akash', 99, '1234567890'),
(2, 'Ritik', 21, '9876543210'),
(3, 'Orkoi', 20, '5555555555' );

select * from users;

create table products (
p_id int primary key,
p_name varchar(20) Not null,
prise decimal (10,2)
);

desc products;

insert into products (p_id, p_name, prise) values
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 600.00),
(3, 'Tablet', 300.50);

select * from products;

create table orders (
o_id int,
u_id int,
p_id int,
foreign key (u_id) references users(u_id),
foreign key (p_id) references products(p_id)
);

desc orders;
select * from orders;