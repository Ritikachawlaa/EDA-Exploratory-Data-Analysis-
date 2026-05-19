

-- Joints

create table dbo.joints1 (
C1 VARCHAR(50),
C2 VARCHAR(50)
);

INSERT INTO dbo.joints1(C1,C2)
VALUES
(1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA');



create table dbo.joints2 (
C1 VARCHAR(50),
C3 VARCHAR(50)
);

INSERT INTO dbo.joints2(C1,C3)
VALUES
(1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF');

select * from dbo.joints1

select * from dbo.joints2

SELECT * FROM dbo.joints1 inner join dbo.joints2 ON 
dbo.joints1.C1 = dbo.joints2.C1

-- Inner joints ignores null values.
-- And give values only for same values in the column we are using to join.

SELECT a.C1,A.C2,B.C3 FROM dbo.joints1 [a] inner join dbo.joints2 [b] ON  
a.C1 = b.C1

