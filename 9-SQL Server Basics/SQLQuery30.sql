

-- Self join 
-- Joining table to itself

select * from dbo.joints1 as A inner join dbo.joints1 as B
on A.C1 = B.C1

select A.C1,A.C2 from dbo.joints1 as A join dbo.joints1 as B
on A.C1 = B.C1

