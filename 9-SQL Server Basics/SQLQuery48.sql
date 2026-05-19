

--Default constraints 
-- The constraints is used to provide default values to columns

--Case 1 : The table doen't exists

create table test_default (
eid int default 5,
firstname varchar (256)default 'Rohit',
lastname varchar (256),
age tinyint
)

select * from test_default

insert into test_default
values (1,'Nitin','Jain',23)

insert into test_default (lastname,age)
values ('Singh',34)

insert into test_default (lastname)
values ('Grover')

--Case 2: the table already exits

alter table test_check
add default 25 for age 


insert into test_default(lastname)
values ('Jain')

select * from test_default