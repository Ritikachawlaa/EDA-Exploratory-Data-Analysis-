

select * from employees_US

--WildCads

--1) % - It may represent 0,1 or multiple characters
--2) _ - It exactly represents exactly one character 

-->1 Find employees whose last name starts with 'S'
select * from employees_us  where LastName like 's%'

-->2 Find employees whose First name ends with 'A'
select * from employees_us where FirstName like '%A'

-->3 Find employees whose Department contains 'Eng'
select * from employees_us where Department like '%Eng%'

--4) Find Employees whose Last Name is exactly 5 characters long.
select * from employees_us where LastName like '_____'

--5) Find Employees whose First Name starts with 'C' or 'D'.
select * from employees_us where FirstName like '[CD]%'

--6) Find Employees whose Last Name contains 'son'.
select * from employees_us where LastName like '%son%'

--7) Find Employees whose First Name contains the letter 'i' as the second character.
select * from employees_us where FirstName like '_i%'

--8) Find Employees whose Last Name starts with any letter between 'A' and 'L'.
select * from employees_us where LastName like '[A-L]%'

--9) Find Employees whose First Name does not contain 'o'.
select * from employees_us where FirstName not like '%o%'

--10) Find Employees whose Last Name ends with 'a' and is exactly 5 characters long.
select * from employees_us where LastName like '____a'

--11) Find Employees whose Department starts with 'Mar' and ends with 'ing'.
select * from employees_us where Department like 'Mar%ing'

--12) Find Employees whose First Name has an 'a' in the third position.
select * from employees_us where FirstName like '__a%'

--13) Find Employees whose Last Name starts with 'Br' or 'Bl'.
select * from employees_us where LastName like 'Br%' or lastname like  'Bl%'

--14) Find Employees whose First Name starts with a vowel.
select * from employees_us where fIRSTNAME LIKE '[aeiou]%'

--15) Find Employees whose First Name does not start with a consonant.
select * from employees_us where FirstName not like '[^aeiou]%'

--16) Find Employees whose First Name starts with a consonant.
select * from employees_us where FirstName not like '[aeiou]%'
-- or 
select * from employees_us where FirstName like '[^aeiou]%'
