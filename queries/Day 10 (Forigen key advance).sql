use lotus;

show tables;
desc orders;
desc users;
desc products;
select * from orders;
select * from users;

alter table orders drop foreign key orders_ibfk_2;
alter table orders drop key p_id;

insert into users (u_id, uname, mobile) values
(1,"xyc",9098777887),
(2,"uhy",8765796685),
(3,"uyt",8765876654);

insert into products (p_id,p_name,prise) values
(201,"oiio",233.00),
(202,"boi",299.00),
(203,"moi",999.00);

insert into orders (o_id,u_id,p_id) values
(101,1,201),
(102,2,202),
(103,2,2030);

alter table orders add foreign key (u_id) references users(u_id) on delete set null;
alter table orders add foreign key (p_id) references products(p_id) on delete set null;

delete from users where u_id=1;
