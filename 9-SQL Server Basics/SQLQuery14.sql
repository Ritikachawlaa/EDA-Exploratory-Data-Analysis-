

select * from dbo.Employees

select * into #4 from dbo.Employees

SELECT * FROM #4

delete from #4
where LastName = '' or Department = '0'

select * into #5 from dbo.Employees

select * from #5

delete from #5

select * from #4

truncate table #4

drop table #4

-- Delete - delete certain record from the table 
-- if we will use delete without where condidtion , all records from the tablw will be deleted 
-- but the table structure remains intact 

--Truncate - delete all the records from the table but the structure of the table reamains intact 

-- Drop - all the records will be deleted plus table structure will also be removed