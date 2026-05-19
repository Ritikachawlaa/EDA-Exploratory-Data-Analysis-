

--Primary key 
-- It can be used to distinguish between any two records in a given table

create table table1 (
id tinyint,
name  varchar(256),
)
 
create table table2 (
id tinyint,--duplicates,may consists null values 
-- values in foreign key will be a subset of primary key
--,also foreign key may consist of nulls as well
course  varchar(256),
)

insert into table2
values 
(1,'A'),
(1,'B'),
(2,'A'),
(3,'A'),
(3,'C'),
(4,'A'),
(5,'C'),
(NULL,'D'),
(5,'E')

insert into table1
values 
(1,'Mayank'),
(2,'Nitin'),
(3,'Raj'),
(4,'Amit'),
(5,'Aman')


select * from table1
select * from table2

