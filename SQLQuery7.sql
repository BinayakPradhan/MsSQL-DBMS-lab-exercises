create database salesman_db;
use salesman_db;

create table salesman(
salesman_id int primary key,
s_name varchar(20),
s_city varchar(20),
commission decimal(8,2));

insert into salesman values
(5001,'A','Ktm',0.15),
(5002,'B','Ktm',0.12),
(5003,'C','Pkr',0.2),
(5004,'D','Pkr',0.12),
(5005,'E','Chitwan',0.10),
(5006,'F','Chitwan',0.15);

create table customer(
customer_id int primary key,
cust_name varchar(20),
city varchar(20),
grade int,
salesman_id int references salesman(salesman_id));



create table orderss(
ord_no int primary key,
purch_amt decimal(8,2),
ord_date varchar(20),
customer_id int references customer(customer_id),
salesman_id int references salesman(salesman_id));

insert into customer values
(3000,'X','Ktm',100,5001),
(3001,'Y','Ktm',100,5002),
(3002,'Z','Ktm',200,5003),
(3003,'G','Ktm',100,5004),
(3004,'H','Ktm',200,5005),
(3005,'I','Ktm',300,5006),
(3006,'K','Ktm',200,5002),
(3007,'L','Ktm',100,5003),
(3008,'P','Ktm',300,5004),
(3009,'O','Ktm',100,5005);

insert into orderss values
(7000,150.56,'2022-10-05',3000,5001),
(7001,551.56,'2022-10-06',3001,5002),
(7002,1152.56,'2022-10-07',3002,5003),
(7003,253.56,'2022-10-08',3003,5004),
(7004,2254.56,'2022-10-09',3004,5005),
(7005,1055.56,'2022-10-00',3005,5006),
(7006,1556.56,'2022-10-01',3006,5002),
(7007,1657.56,'2022-10-02',3007,5003);

/*Find salesperson and customer who belongs to same city(salesman name, cust_name, city)*/
select s_name, cust_name, s_city from customer c, salesman s 
where s.salesman_id = c.salesman_id and s.s_city = c.city;

/*Find those orders whose order amount exists between 500 & 2000(ord_no, purch_amt, cust_name, city)*/
select ord_no, purch_amt, cust_name, city from customer c, orderss o 
where c.customer_id = o.customer_id and o.purch_amt between 500 and 2000;

/*Find salesperson and customers he handle (customer name, city, salesman name, commission)*/
select cust_name, city, s_name, commission from customer c, salesman s
where c.salesman_id = s.salesman_id
/*Find those salesperson who received a commission from company more than 12% (customer name, customer city, salesman name, commission)*/
select s_name, cust_name, city, commission from customer c, salesman s
where c.salesman_id= s.salesman_id and s.commission > 0.12;

/*Make a report with customer name, city, order number, order date, order amount salesman name and commission to find that either any of
the existing customer have placed no order or placed one or more orders by their salesman or by own*/
select cust_name, city, ord_no, ord_date, purch_amt, s_name, commission 
from customer c left join salesman s on s.salesman_id = c.salesman_id
left join orderss o on o.customer_id = c.customer_id;

/*Make a list in ascending order for the salesman who works either for one or more customer or not yet join under any of the customer*/
select s_name, cust_name, city, grade, s_city  /*k dekhaune sir le lekheko cha*/
from salesman s left join customer c		/*left join gareko salesman ma customer*/
on s.salesman_id = c.salesman_id		
order by s.salesman_id ASC;			/*ascending order by salesman id*/

/*doing right join*/
select s_name, cust_name, city, grade, s_city 
from customer c right join salesman s
on s.salesman_id = c.salesman_id		
order by s.salesman_id ASC;	