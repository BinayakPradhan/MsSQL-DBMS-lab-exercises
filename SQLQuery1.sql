create database customer_db
use customer_db
create table customer(
c_id integer primary key,
c_name varchar(100),
c_address varchar(100),
c_phone integer,
c_salary decimal(8, 2));

Insert into customer values
(11,'Binayak','Sanepa1',35,350.5),
(2, 'S','Sanepa2',252,3000.5),
(3, 'A','Sanepa3',253,4000.5),
(4, 'M','Sanepa4',254,5000.5),
(5, 'I','Sanepa5',255,6000.5),
(6, 'R','Sanepa6',256,7000.5),
(7, 'K','Sanepa7',257,8000.5),
(8, 'A','Sanepa8',258,9000.5),
(9, 'T','Sanepa9',259,4300.5),
(10, 'E','Sanepa10',250,5300.5);

select *from customer;

Delete from customer where c_id = 11;

