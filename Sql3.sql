#Foreign key
#desc department;
#create table emp (id int, name varchar(20),dept_id int, foreign key (dept_id) references department(dept_id) );
#desc emp;


create table courses(courseid int primary key,coursename varchar(30));
insert into courses values(1,'sci'),
(2,'maths');
create table students(sid int primary key,sname varchar(30),courseid int, foreign key(courseid) 
references courses(courseid));
insert into students values(101,'divya',1),
(102,'diksha',2);
select * from courses;
select * from students;