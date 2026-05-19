


-- Left join or left outer join 

select * from dbo.joints1 

select * FROM dbo.joints2

select a.C1,a.C2,b.C3 from dbo.joints1 [a] left join dbo.joints2 [b] on
a.C1 = B.C1

-- Left join means preference is given to the first table (left table )

