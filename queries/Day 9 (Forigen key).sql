create database xyz;
use xyz;
create table emp (Eid int primary key, Ename varchar(20) not null , Salary decimal(10,2), Mobile decimal(10,2) unique , City varchar(20) default "Bhopal"); 
desc emp;

create table Manager (m_id int , m_name varchar(20) not null,d_name varchar(20) not null, foreign key(m_id) references emp(Eid));
desc Manager;
alter table emp drop key mobile;
alter table manager modify d_name varchar(20);
alter table manager modify m_name varchar(20);
alter table manager drop key manager_ibfk_1;
alter table manager drop key m_id;

desc emp;
alter table emp modify city varchar(20);
alter table emp drop primary key;
alter table emp modify Ename varchar(20);
alter table emp modify Eid int;