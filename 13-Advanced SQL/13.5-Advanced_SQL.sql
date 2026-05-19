


select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp

--A View is a virtual table, it is a stored SQL Query 
--It helps in reducing complexity of the code 
--It helps in implementing security 
--It doesn't occupy any physical space and it is created based on some table 

create view view_1 as (
select * from emp_bkp
)
select * from view_1
--**
update view_1 
	set EmployeeID = 100


--**

Create view view_2 as (
select EmployeeID,FirstName,LastName,email,DepartmentID,HireDate from emp_bkp
)


select * from view_2

--------------------------------

DROP VIEW view_2