

-- Right join

select * from dbo.joints1 right join dbo.joints2 
ON dBO.JOints1.C1 = dbo.joints2.C1 

select A.C1,B.C3,A.C2 from dbo.joints1 [A] right join dbo.joints2 [B]
ON A.C1 = B.C1 