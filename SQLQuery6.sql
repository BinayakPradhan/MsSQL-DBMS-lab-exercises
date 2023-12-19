create database studentDatabase;
use studentDatabase;

create table students(
s_id int primary key,
s_name varchar(20),
s_age int,
s_roll int,
s_address varchar(30),
s_marks int);

insert into students values
(1,'ken',20,100,'rome',35),
(2,'kens',23,103,'rome',55),
(3,'kenss',25,102,'paris',5),
(4,'men',10,101,'rome',75),
(5,'sen',19,105,'paris',65),
(9,'den',4,106,'rome',45),
(8,'len',25,107,'paris',100),
(7,'jen',30,112,'rome',99),
(6,'hen',1,109,'rome',78),
(10,'yken',80,120,'paris',66);

select *from students order by s_name ASC;

select distinct s_age from students order by s_age DESC;

select s_address, count (s_id) as id_count from students group by s_address having count(s_id) > 3;