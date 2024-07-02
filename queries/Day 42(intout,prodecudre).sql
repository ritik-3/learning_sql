#create a stored prodedure of a perticular employee number output email

use dummy;

select * from employees;

delimiter $$
create procedure emial_info(in emp_num int, out emp_email varchar(20))
begin
select email from employees
where employeenumber = emp_num;
end $$
delimiter ;

call emial_info('1002', @email)

#create a stored procedure to get the count of employees based on the job titles 

delimiter $$
create procedure emp_info2(in j_title varchar(20), out emp_name varchar(20))
begin
select * from employees
where jobtitle = j_title;
end $$
delimiter ;

call emp_info2('sales rep', @info);


delimiter $$
create procedure emp_count(in j_title varchar(20), out emp_name varchar(20))
begin
select count(*) from employees
where jobtitle = j_title;
end $$
delimiter ;


#########################################################
delimiter $$
create procedure emp_count2(in j_title varchar(20), out ecount int)
begin
select count(*) into ecount from employees
where jobtitle = j_title;
end $$
delimiter ;

call emp_count2('sales rep', @ecount);
select @ecount;

########################################################
delimiter $$
create procedure setcounter(inout counter int, in inc int)
begin
set counter =counter + inc;
end $$
delimiter ;

set @counter = 1;
call setcounter(@counter, 4);

select @counter;