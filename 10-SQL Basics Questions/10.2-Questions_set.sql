


select * from Employees 

--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from Employees where Department = 'IT' and salary >=75000


--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from Employees where Department = 'HR' or salary <=60000


--3. How do you select employees who do not work in the 'Finance' department?
select * from Employees where Department not like 'Finance'

--or
select * from Employees where not department = 'Finance'


--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from Employees where department = 'Finance' and salary between 60000 and 70000


--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from Employees  where department = 'IT' and salary <= 80000

--or
select * from Employees where department = 'IT' and not salary >80000

--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?

select * from Employees where (department in ('HR') OR Department in('Finance'))  and salary >=65000


--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from Employees where lastname like 'D%' and  Department not like 'HR'


--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?

select * from Employees where department not like 'IT' and salary >70000

--9. How do you select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'?
select * from Employees where Department = 'IT' and (salary >75000 or FirstName = 'Laura')


--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from Employees where department not IN ('HR','IT') 
