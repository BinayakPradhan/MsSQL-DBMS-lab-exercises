create database users_db;
use users_db;

create table users(
u_id integer primary key,
u_name varchar(50) unique,
u_address varchar(50),
u_salary decimal(10,2),
u_age integer,
u_phone varchar(20));

insert into users values
(1,'dam','paris',236.5,56,'6235485846'),
(2,'eam','paris1',246.5,52,'6543485846'),
(3,'ram','paris2',256.5,52,'65424385846'),
(4,'gam','paris3',266.5,54,'654856846'),
(5,'yam','paris4',276.5,53,'654852846'),
(6,'uam','paris5',286.5,52,'65485623846'),
(7,'ham','paris6',296.5,52,'65485842636'),
(8,'mam','paris7',2306.5,53,'65485846236'),
(9,'oam','paris8',2343.5,53,'65485846623'),
(10,'pam','paris9',234.5,54,'65485846623'),
(11,'pa222m','ktm',2324.5,534,'65236623');

create table orders(
o_id integer primary key,
o_name varchar(50),
o_qty integer,
o_amount decimal(8,2),
u_id integer references users(u_id));

insert into orders values
(11,'gat',4,650.5,1),
(2,'dam',4,650.5,2),
(3,'sam',4,650.5,3),
(4,'wat',4,650.5,4),
(5,'ham',4,650.5,5);

select *from users;
select *from orders;

select u_id, 
count(o_id) 
from orders 
group by u_id;

select u_id, sum(o_qty) as totalqty from orders group by u_id;
Update users set u_address = 'rome' where u_address = 'paris';  