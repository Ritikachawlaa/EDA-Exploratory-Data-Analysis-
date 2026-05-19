

-- Full Outer join 

-- It includes 
--> output of the inner join 
--> only left table values 
--> only right table values

select * from dbo.joints1 [a] full outer join dbo.joints2 [b]
on a.c1 = b.c1 

select a.c1,a.c2,b.c1 from dbo.joints1 [a] full outer join dbo.joints2 [b]
on a.c1 = b.c1 

