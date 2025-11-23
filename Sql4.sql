create database joins;
use joins;

create table employees(id int, name varchar(20), dept_id int);
insert into employees values(1,"Alice",101),
							(2,"bob",102),
                            (3,"charlie",103),
                            (4,"david",null);
                            
create table departments(dept_id int, dept_name varchar(20));
insert into departments values(101,"HR"),
							  (102,"IT"),
                              (103,"Finanace");
						
select employees.id,employees.name,departments.dept_name
from employees
inner join departments on
employees.dept_id=departments.dept_id;
