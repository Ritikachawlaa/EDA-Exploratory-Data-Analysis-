

-- Left anti join 

select A.C1,B.C3,A.C2 from dbo.joints1 [A] left OUTER join dbo.joints2 [B]
ON A.C1 = B.C1 
where B.C3 is null 

-- Right anti join 

select A.C1,B.C3,A.C2 from dbo.joints1 [A] right OUTER join dbo.joints2 [B]
ON A.C1 = B.C1 
where A.C2 is null 

select A.C1,B.C3,A.C2 from dbo.joints1 [A] right OUTER join dbo.joints2 [B]
ON A.C1 = B.C1 
where A.C1 is null 
