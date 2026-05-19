

SELECT * FROM APPEND1

SELECT * FROM APPEND2

--UNION ALL - IF WE WANT DUPLICATE OUTPUTS

SELECT C1,C2,C3 FROM APPEND1
UNION ALL
SELECT C1,C2,C3 FROM APPEND2

--UNION - IF WE DON'T WANT DUPLICATE OUTPUTS

SELECT C1,C2,C3 FROM APPEND1
UNION 
SELECT C1,C2,C3 FROM APPEND2

-- Numbers of columns present in the seect list have to be same
-- Data types of the columns have to be same 
-- Order in which columns are written has to be same

select C1,C2,C3 FROM APPEND1 -- C1 IS INT, C2 IS NVARCHAR,C3 IS INT
UNION
SELECT C1,C3,C2 FROM APPEND2

-- Aliase names which are specified in 1st select statement will be assigned to the columns

select C1 [Column 1],C2 [Column 2],C3 [Column 3] from append1
union
select C1 [Col1],C3 [Col2],C2 [Col3] from append2

