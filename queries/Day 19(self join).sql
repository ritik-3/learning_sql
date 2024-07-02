use joins;
use dummy;
select * from employees;

select * from employees e join employees m
on e.employeenumber=m.reportsto;

select m.employeenumber,
concat(m.firstname," ", m.lastname) as manager,
concat(e.firstname," ",e.lastname) as "dirct reports",
e.employeenumber
from employees e
join employees m on 
m.employeenumber=e.reportsto;

create table family (member_id varchar(20), Name varchar(20), age int ,parant_id varchar(20));


alter table family rename column parant_id to parent_id;
desc family;
select * from family;

insert into family (member_id,Name,age,parant_id) values
("F1","David",4,"F5"),
("F2","Carol",10,"F5"),
("F3","michel",12,"F5"),
("F4","Johnson",36,null),
("F5","maryam",40,"F6"),
("F6","stewart",70,null),
("F7","Rohan",6,"F4"),
("F8","asha",8,"F4");

select c.name,c.age, p.name,p.age from family c
join family p
on p.member_id=c.parent_id;

select c.name,c.age, p.name,p.age from family c
left join family p
on p.member_id=c.parent_id;