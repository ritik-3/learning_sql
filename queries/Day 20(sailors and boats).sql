create database res_1;

use res_1;

create table sailors(
sid int, sname varchar(20), rating int, age decimal(10,2)
);

drop table sailors;

insert into sailors
(sid,sname,rating,age) value
(22,'Dustin',7,45),
(29,'Brtus',1,33),
(31,'Lubber',8,55.5),
(31,'Andy',8,25.5),
(58,'Rusty',10,35),
(29,'Brtus',1,33),
(64,'Horatio',7,35),
(71,'Zorba',10,16),
(74,'Horatio',9,35),
(85,'Art',3,25.5),
(95,'Bob',3,63.5);

select * from sailors;

create table Reservers(
Sid int,
bid int,
day date);
desc reservers;

INSERT INTO Reservers (Sid, bid, day) VALUES
(22, 101, '1998-10-10'),
(22, 102, '1998-10-10'),
(22, 103, '1998-10-08'),
(22, 104, '1998-10-07'),
(31, 102, '1998-11-10'),
(31, 103, '1998-11-06'),
(31, 104, '1998-11-12'),
(64, 101, '1998-09-05'),
(64, 102, '1998-09-08'),
(74, 103, '1998-09-08');

select * from reservers;

create table boats(
bid int,
bname varchar(20),
color varchar(20)
);

insert into boats
(bid,bname,color) value
(101,'Interlake','Blue'),
(102,'Interlake','red'),
(103,'Clipper','green'),
(104,'Marine','Red');

select * from boats;

SELECT s.sname
FROM sailors s
JOIN Reservers r 
ON s.sid = r.Sid
WHERE r.bid = 103;

select b.color,s.sname
from sailors s
join Reservers r 
on s.sid = r.Sid
join boats b on r.bid = b.bid
where s.sname = 'Lubber';

select *
from sailors s
join Reservers r 
on s.sid = r.Sid
join boats b 
on r.bid = b.bid
where s.sname = 'Lubber';

select *
from sailors s
join reservers r 
on s.sid=r.sid
join boats b
on r.bid=b.bid
where b.color in ('red', 'Green');

select s.sid,s.sname,r.day,b.color
from sailors s
join reservers r
on s.sid=r.sid
join boats b
on r.bid=b.bid
where b.color=("red" or "green");

Rename database res_1 to sailor_and_boats;
alter database res_1 modify name = sailors_and_boats;

show databases;