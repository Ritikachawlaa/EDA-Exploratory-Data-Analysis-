

select * from dbo.joints1

select * from dbo.joints2

select * from dbo.joints1 [a] inner join dbo.joints2 [b]  on
a.C1 = b.C1

select a.C1,a.C2,b.C3 from dbo.joints1 [a] inner join dbo.joints2 [b]  on
a.C1 = b.C1

select a.C1,a.C2,b.C3 from dbo.joints1 [a] join dbo.joints2 [b]  on
a.C1 = b.C1

-- INNER JOIN OR JOIN BOTH KEYWORDS CAN BE USED 