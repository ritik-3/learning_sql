create database test;
use test;
create table emp (
e_id int primary key auto_increment,
e_name varchar(20) not null,
mobile varchar(20) unique,
salary decimal(10,2)
);

desc emp;


select * from emp;

insert into emp (e_name, mobile,salary) values
("uyt", "+91 7889564534", 1555.90);

set sql_safe_updates=0;

set @num=0;
update emp set e_id = @num:= @num+1;
