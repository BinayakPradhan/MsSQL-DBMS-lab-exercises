create database books_db;
use books_db;

create table books(
bookid int primary key,
title varchar(50),
authorfirst varchar(30),
authorlast varchar(30),
category varchar(30),
qty int,
price decimal(8,2));

insert into books values
(1,'halo','bit','lit','scifi',3,600),
(2,'valo','dit','wit','scifi',6,10000),
(3,'salo','pit','dit','scifi',8,200),
(4,'malo','kit','git','scifi',1,300),
(5,'kalo','jit','hit','scifi',6,200),
(6,'talo','mit','jit','scifi',2,7000),
(7,'nalo','sit','kit','scifi',0,100),
(8,'walo','rit','uit','scifi',7,500);

select *from books;

select top 3 *from books;

select *from books where price between 200 and 300;

select *from books where qty > all
(select qty from books where price >= 500);

delete from books where qty > 5 OR price < 3000;
