create database Joins;
use Joins;
create table T1(Id int);

create table T2(Id int);

insert into T1 values 
(1),(1),(1),(2),(3),(3),(null);
drop table T1;

insert into T2 values 
(1),(2),(4),(null),(null);

select * from T2;

select * from T1 cross join T2;

select count(*) from T1 cross join T2;

select * from T1 cross join t2 
on t1.id=t2.id;

select count(*) from T1 cross join t2 
on t1.id=t2.id;
select * from T1;

#inner Join

select * from T1 inner join T2
on T1.id=T2.id;

select count(*) from T1 inner join T2
on T1.id=T2.id;

#Left JOIN

select * from T1 left join T2
on T1.id=T2.id;

select count(*) from T1 left join T2
on T1.id=T2.id;

#Right JOIN

select * from T1 right join T2
on T1.id=T2.id;

select count(*) from T1 right join T2
on T1.id=T2.id;


#FULL JOIN

select * from T1 left join T2
on T1.id=T2.id
union all
select * from T1 right join T2
on T1.id=T2.id
where t1.id is null;

select count(*) from T1 left join T2
on T1.id=T2.id
union all
select count(*) from T1 right join T2
on T1.id=T2.id
where t1.id is null;
