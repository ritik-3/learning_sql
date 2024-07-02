create database office;
use office;
create table emp(empid int, empname varchar(20),salary decimal(10,2), d_o_b date);
desc emp;
alter table emp add column age tinyint;
desc emp;
alter table emp rename column age to e_age;
desc emp;
alter table emp add column m_age tinyint;
desc emp;
alter table emp drop column m_age;
desc emp;
alter table emp modify empid bigint;
desc emp;
select * from emp;
insert into emp (empid,empname,salary,d_o_b,e_age) values
(101,"abc",1234.56,"2002-10-11",21);

insert into emp (empid,empname,salary,d_o_b) values
(102,"def",5434.56,"2001-04-11"),
(103,"ghi",1334.56,"2005-09-11");
select * from emp;

set sql_safe_updates=0;

update emp set empname="cybrom" where empid =103;
select * from emp;
update emp set e_age=22 where empid is null;
