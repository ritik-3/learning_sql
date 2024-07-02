use office;
select * from emp;

set sql_safe_updates=0;

delete from emp where empid=103;

start transaction;
delete from emp where empid=102;
delete from emp where empid=103;
rollback;
desc emp;