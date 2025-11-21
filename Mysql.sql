#std -id name per cityid courseid
#course -co name coid
#to display view
#to create or replace view
create database school;
use school;
create table student(stdid int,sname varchar(29),percentage int, cityid int, courseid int);
insert into student values(1,'divya',80, 101,11),
                          (2,'sakii',90, 102,12),
                          (3,'pragii',70, 103,13),
                          (4,'namrii',60, 103,14);
create table city(id int primary key, name varchar(20));
insert into city values(101,'pune'),(102,'akluj'),(103,'solapur'),(104,'malshiras');
create table course(coursename varchar(20),courseid int);
insert into course values('java',11),('python',12),('pascal',13),('html',14);
select * from student;
select * from city;
select * from course;

select s.name as std_name,
       c.name as Course_Name,
       ct.name as City_Name
from student as s inner join
course as c on  courseid = c.id
inner join city as ct
on s.cityid = ct.id;



