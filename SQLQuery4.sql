create database customer_database;
use customer_database;

create table customers(
id int primary key,
name varchar(30),
age int,
address varchar(30),
salary decimal(8,2));

insert into customers values
(1, 'Bins',20,'ktm',25000.5),
(2, 'Dino',21,'teku',25.5),
(3, 'Lins',22,'ktm',25.5),
(4, 'Pino',23,'teku',25000.5),
(5, 'Kins',24,'ktm',25.5),
(6, 'Rino',25,'teku',25000.5),
(7, 'Wins',26,'ktm',25.5),
(8, 'Hino',27,'kalank',25000.5),
(9, 'Sins',28,'ktm',25.5),
(10, 'Zins',29,'kalank',25000.5);

select *from customers where salary>5000;
select *from customers where address = 'ktm' OR address = 'teku';
select *from customers where address = 'ktm' AND age > 22;
select *from customers where name like '%o';
select *from customers where name like '%o%';
select *from customers where name like 'o%';
select *from customers where name like '_o%';
select *from customers where name like '___o%';