use joins;

create table Table1 (ID int);
create table Table2 (Id int);

insert into Table1 value
(1),(1),(1),(2),(3),(3),(3);

insert into table2 value
(1),(1),(2),(4),(null);

select * from table1;
select * from table2;

select * from table1 cross join table2;

select * from table1 as t1 inner join table2 as t2
on t1.id=t2.id;

select * from table1 as t1 left join table2 as t2
on t1.id=t2.id;

select * from table1 as t1 right join table2 as t2
on t1.id=t2.id;

select * from table1 as t1 natural join table2 as t2;

#full join

select count(*) from table1 t1 left join table2 t2
on t1.id=t2.id
union
select count(*) from table1 t1 right join table2 t2
on t1.id=t2.id 
where t1.id is null;
