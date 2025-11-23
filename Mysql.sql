create database innerjjoin;
use innerjoin;

create table employee(EmpID int, EmpName varchar(20), DeptID int);
insert into employee values(1,"Pranali", 10),
                            (2,"Sonali", 20),
                            (3,"Priya", 30),
                            (4,"Neha", Null),
                            (5,"Kiran", 40),
                            (6,"Ananya", 50);
create table Department(DeptID int,DeptName varchar(20));
insert into Department values(10,"HR"),
                              (20,"IT"),
                              (30,"Finanace"),
                              (40,"Marketing"),
                              (50,"Operations");

select e.EmpName,d.DeptName from employee e inner join Department d on e.DeptID = d.DeptID;
select e.EmpID,e.EmpName,d.DeptName from employee e inner join Department d on e.DeptID = d.DeptID where d.DeptName = "IT";
select d.DeptName, e.EmpName from Department d inner join employee e on d.DeptID = e.DeptID; 
select e.EmpName,d.DeptName from employee e inner join Department d on e.DeptID = d.DeptID order by e.EmpName;
select e.EmpName,d.DeptName from employee e inner join Department d on e.DeptID = d.DeptID;

#Left join
select e.EmpID,e.EmpName,d.DeptName from employee e left join Department d on e.DeptID = d.DeptID;
select e.EmpID,e.EmpName from employee e left join department d on e.DeptID = e.DeptID where d.DeptID is null;
select e.EmpName, d.DeptName from employee e left join department d on e.DeptID = d.DeptID;
select e.EmpID,e.EmpName,d.DeptName from employee e left join Department d on e.DeptID = e.DeptID order by d.DeptName;
select e.EmpID,e.EmpName,d.DeptName from employee e left join department d on e.DeptID = d.DeptID where d.DeptName = 'HR';

#Right join
select e.EmpName,d.DeptName from department d right join employee e on e.DeptID = d.DeptID;
select d.DeptName,e.EmpName from Department d right join employee e on e.DeptID = d.DeptID;
select d.DeptID,d.DeptName from employee e right join department d on e.DeptID = d.DeptID where e.EmpID is null;
select d.DeptName,d.DeptName from employee e right join department d on e.DeptID = d.DeptID order by d.DeptName;
select e.EmpName from employee e right join department d on e.DeptID = d.DeptID where d.DeptName = 'Marketing';

