

--Orders

select * from EmployeeSalaries

select distinct top 1 Department ,AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary >50000
group by Department
having avg(Salary)>55000
order by Department

-- From & Joins are executed 
-- where clause is executed 
-- group by clause is executed 
-- having clause is executed 
-- Select clause is executed 
-- distinct clause is executed 
-- order by clause is executed 
-- top clause is executed 

--incorrect query 
select distinct top 1 Department ,
AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary >50000
group by Department
having [Avg Salary]>55000
order by Department