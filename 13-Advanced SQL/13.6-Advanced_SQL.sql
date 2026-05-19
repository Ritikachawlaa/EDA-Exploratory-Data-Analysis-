

--Index 

select * from dbo.Employees

create index IX_1 on dbo.Employees(salary desc)


create index IX_2 on dbo.Employees(firstname,lastname)

drop index dbo.Employees.IX_1