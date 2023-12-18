create database student_db;

use student_db;

create table student(
std_id integer NOT NULL,
std_name varchar(50) unique,
std_roll integer,
std_age integer,
std_phone varchar(20)
);

insert into student values
(1,'Abby',1,20,'9841000000'),
(2,'Gabby',2,21,'9842000000'),
(3,'Habby',3,22,'9843000000'),
(4,'Snabby',4,23,'9844000000'),
(5,'Tabby',5,24,'9845000000');



Alter table student Add constraint PK_studentID primary key (std_id);
Alter table student Add constraint std_name unique(std_name);
Alter table student Add constraint std_age default 22 for std_age;

select *from student;

insert into student values(6, 'Luffy', 23, default, '58970234');

Truncate table student;


