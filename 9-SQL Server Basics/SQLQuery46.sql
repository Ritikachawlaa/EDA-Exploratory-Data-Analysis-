


--Unique constraints 
--it ensures that column consists of unique values 

--Case 1 : when the table already exits

alter table test_unique
add unique(lastname)

--Case 2: we need to create a table 

Create table test_unique(
std int unique,
age tinyint not null,
firstname varchar(256) unique not null,
lastname varchar(256)
)

select * from test_unique

insert into test_unique 
values (1,22,'Mayank','Mehra')

insert into test_unique 
values (1,24,'Rohit','Singh') -- unique constraint violated 

insert into test_unique 
values (null,34,'Akhi','Jain') -- but null values can be inserted where unique constraintis defined 
							   -- but only once

insert into test_unique 
values (null,54,'Nitin','Singh')

truncate table test_unique