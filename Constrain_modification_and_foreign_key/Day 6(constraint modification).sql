use office;
select * from emp;
show tables;
desc  emp;
drop table emp;
create table emp (e_id int primary key, e_name varchar(20) not null, mobile varchar(15) unique, city varchar(20) default "Bhopal",age tinyint, salary decimal(10,2),check(age>18));
desc emp;
alter table emp drop primary key;
alter table emp modify e_id int;
alter table emp modify e_name varchar(20);
#alter table emp drop index unique_key_name;(column_name)
alter table emp modify city varchar(20);
alter table emp drop check emp_chk_1;
alter table emp drop key mobile;