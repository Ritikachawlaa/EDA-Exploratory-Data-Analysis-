

select * from EmployeeRecords_1
order by Employeeid,email

------
select distinct * into #1 from EmployeeRecords_1

truncate table EmployeeRecords_1

insert into EmployeeRecords_1 select * from #1

select * from EmployeeRecords_1 order by email

--Records with lower Employee ID should remain 

with cte as (
select *,DENSE_RANK() OVER(PARTITION BY email order by employeeid) [DR] from EmployeeRecords_1
)
delete from cte where dr = 2

---
select * into EmployeeRecords_2 from #1

select * from EmployeeRecords_2 order by email 

--Retain the record with higher Employee id 

with cte as (
select *, DENSE_RANK() over(partition by email order by employeeid desc) [DR] from employeeRecords_2
)
--select * from cte

delete from cte where dr = 2

select * from employeerecords_1 --Employeeid - 5 was retain

select * from EmployeeRecords_2 --Employeeid - 6 was retain