

select * from Employees

--2nd HighestSalary 

select max(salary) [2nd Highest Salary ] from employees where salary <
(select max(salary) from Employees)


--3rd Highest Salary 

select max(salary) [3rd Highest Salary ] from Employees where salary <
(select max(salary) [2nd Highest Salary ] from employees where salary <
(select max(salary) from Employees))

--using CTE 
with cte as (
select * ,DENSE_RANK() OVER(ORDER BY SALARY DESC) [DR] FROM EMPLOYEES
)

SELECT SALARY [2ND HIGHEST SALARY ] FROM CTE WHERE DR = 2

--3RD Highest Salary 

with cte as (
select * ,DENSE_RANK() OVER(ORDER BY SALARY DESC) [DR] FROM EMPLOYEES
)

SELECT SALARY [3RD HIGHEST SALARY ] FROM CTE WHERE DR = 3

--Sub Query along with Dense_Rank()

select salary as [2nd Highest Salary] from
(select *,DENSE_RANK() over(order by salary desc) [DR] from employees) x
where DR = 2

--3rd Highest Salary 
select salary as [3RD Highest Salary] from
(select *,DENSE_RANK() over(order by salary desc) [DR] from employees) x
where DR = 3

--Sub Query
select top 1 salary [2nd Highest Salary] from 
(select distinct top 2 salary from employees order by salary desc ) x
order by salary asc

--3rd Highest Salary 

select top 1 salary [3RD Highest Salary] from 
(select distinct top 3 salary from Employees order by salary desc) y 
order by Salary asc

