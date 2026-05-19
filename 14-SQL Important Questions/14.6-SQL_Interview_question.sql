

SELECT * from EmployeeRecords
order by EmployeeID,EmployeeName, ManagerId

with CTE as (
select *,Row_Number() over(partition by EmployeeID,EmployeeName, ManagerId order by Employeeid)
[Row Number] from EmployeeRecords
)

--select * from CTE
delete from CTE where [Row Number] = 2

-------------------------

select * into emprecords_bkp from EmployeeRecords

--*************-----------------

select * from emprecords_bkp

select distinct * into #1 from emprecords_bkp

truncate table emprecords_bkp

insert into emprecords_bkp select * from #1

