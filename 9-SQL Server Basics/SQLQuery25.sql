

select * from dbo.joints1

select * from dbo.joints2

select * from dbo.joints1 left join dbo.joints2 
On dbo.joints1.C1 = dbo.joints2.C1 

select * from dbo.joints1 left outer join dbo.joints2 
On dbo.joints1.C1 = dbo.joints2.C1