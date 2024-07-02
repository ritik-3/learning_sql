use office;
desc emp;
alter table emp add primary key(e_id);
alter table emp modify e_name varchar(20) not null;
alter table emp modify e_name varchar(25) not null;
alter table emp modify city varchar(20) default "Bhopal";
alter table emp add unique(mobile);
alter table emp add check (age >18);
alter table emp add check (salary >15000);
alter table emp drop check emp_chk_1;
alter table emp add check(age>18 and salary>15000); #not prefered

