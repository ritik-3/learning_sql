create database lotus;
use lotus;
create table users (u_id int primary key, uname varchar(20) not null, mobile varchar(20) unique);
show tables;
desc users;
desc products;
desc orders;
select * from users;

create table oders (o_id int primary key, u_id int, p_id int);

create table products (p_id int primary key, p_name varchar(20), prise varchar(20) not null);
alter table products modify prise decimal(10,2);
alter table oders add foreign key (u_id) references users (u_id);
alter table oders add foreign key (p_id) references products (p_id);

alter table oders rename orders;