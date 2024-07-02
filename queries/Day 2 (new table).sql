 use cybrom;
 show databases;
 create table stu(s_id int,s_name varchar(20),age tinyint,fees decimal(10,2),d_o_b date);
 desc stu;
 rename table stu to stu_1;
 desc stu_1;
 drop table stu_1;
 drop database cybrom;
 