

create database constraints
use constraints

--Constraints
--Conditions that can be applied on columns of table & these conditions are to be follwoed while
-- inserting records into the table

--Not null constraint

--Case 1: We will have to create a new table 

create tabLE test_not_null(
EID INT NOT NULL,
Age tinyint,
firstname varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'test_not_null'

insert into test_not_null values (1,23,'Mayank')

insert into test_not_null values 
(null,45,'Ritika') -- null value is not allowed in eid 

insert into test_not_null values 
(1,null,'raj')

-- Case 2 : The table already exists
--We want to make firstname column nullable 

alter table test_not_null 
alter column firstname varchar(256) not null

insert into test_not_null values 
(7,20,null) -- null value is not allowed 

alter table test_not_null 
alter column age tinyint not null -- if null values is already inserted then it can't be modify to null column


select * from test_not_null