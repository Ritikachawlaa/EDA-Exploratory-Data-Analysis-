

--Foreign key constraints 

--Case 1 : when the new table has to be created 
create table test_primary_key (
ID int primary key,
name varchar (256)
)

Insert into test_primary_key 
values (1,'Mayank'),
(2,'Raj'),
(3,'Jayant')

select * from test_primary_key
select * from test_foreign_key

create table test_foreign_key (
ID int foreign key references test_primary_key(id),
course varchar (256)
)

Insert into test_foreign_key 
values (1,'A'),
(null,'B'),
(5,'C')

--Case 2 :Table already exists 

create table test_foreign_key_2 (Id int,course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)