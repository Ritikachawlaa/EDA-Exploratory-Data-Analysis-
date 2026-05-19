

select * from EmployeeSalaries

---Incorrect Query 
select *
,LAST_VALUE(EmployeeName) over(order by salary desc) [ Emp with lowest salary]
from EmployeeSalaries

--Correct Query
select *
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [ Emp with lowest salary]
from EmployeeSalaries

select *
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [ Emp with lowest salary]
,LAST_VALUE([Salary]) over(order by salary desc rows between unbounded preceding and unbounded following) [ lowest salary]
from EmployeeSalaries

-------------last value window function
select *
,LAST_VALUE(EmployeeName) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [ Emp with lowest salary]
,LAST_VALUE([Salary]) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [ lowest salary]
from EmployeeSalaries

select *
,LAST_VALUE(EmployeeName) over(partition by department order by salary  rows between unbounded preceding and unbounded following) [ Emp with highest salary]
,LAST_VALUE([Salary]) over(partition by department order by salary  rows between unbounded preceding and unbounded following) [ highest salary]
from EmployeeSalaries


------------------first value window function 
select *
,First_VALUE(EmployeeName) over(partition by department order by salary desc ) [ Emp with lowest salary]
,First_VALUE([Salary]) over(partition by department order by salary desc) [ lowest salary]
from EmployeeSalaries


