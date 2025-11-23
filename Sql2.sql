#self join
#s1.id<> s2.id and s1.address = s2.address
create table employeee(emp_id int, emp_name varchar(30), manager_id int);
insert into employeee values(1,'alice',null),
							(2,'ritu',1),
                            (3,'aman',1),
                            (4,'aniket',2),
                            (5,'amit',2);
select e1.empname as employee,
e2.empname as manager 
from employeee e1 left join employeee e2 on e1.managerid = e2.empid;