#union removes duplicate
create table Student1(std_id int,std_name varchar(20));
insert into Student1 values(1,'Divya'),
                          (2,'Diksha'),
                          (3,'Aryan');
create table Student3(std_id int, std_name varchar(20));
insert into Student3 values(3,'Aryan'),
                           (4,'Sayali'),
                           (5,'Sujal');
#removes duplicates                            
select std_id,std_name from Student1 union
select std_id,std_name from Student3;

#includes duplicates
select std_id,std_name from Student1 union all
select std_id,std_name from Student3;

