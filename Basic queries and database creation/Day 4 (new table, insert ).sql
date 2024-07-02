use office;
create table EMP(ID int,Name varchar(20),Mobile_Number varchar(13),Address Varchar(40),Salrary decimal(10,2));
create table Manager(ID int,Name varchar(20),Mobile_Number varchar(13),Address Varchar(40),Salrary decimal(10,2));
show tables;
desc emp;
drop table emp;
create table emp(empid int, empname varchar(20),salary decimal(10,2), d_o_b date);

insert into emp (empid,empname,salary,d_o_b) values
(101,"abc",1234.56,"2002-10-11");

insert into emp (empid,empname,salary,d_o_b) values
(102,"def",5434.56,"2001-04-11"),
(103,"ghi",1334.56,"2005-09-11");

insert into emp set
empid="104",empname="ghi",salary="12209.78", d_o_b="1999-01-23";

select * from emp;
select empid, salary from emp;
truncate table emp;
drop database office;
