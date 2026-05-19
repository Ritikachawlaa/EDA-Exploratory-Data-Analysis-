


SELECT * FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(salary) over(order by salary asc) [Minimum Salary]
FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(employeeName) over(order by salary asc) [Emp with Minimum Salary]
FROM EmployeeSalaries

SELECT *
,FIRST_VALUE(employeeName) over(order by salary asc) [Emp with Minimum Salary]
,FIRST_VALUE(salary) over(order by salary asc) [Minimum Salary]
FROM EmployeeSalaries


select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary ) [First_Value]
from employeeSalaries

select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary desc) [First_Value]
from employeeSalaries

select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary desc) [First_Value EID]
,FIRST_VALUE(EmployeeName) over(partition by department order by salary desc) [First_Value EName]
from employeeSalaries