

--Recursive CTE 
--Factorial of a given number 

with [R CTE] as (
--Anchor Query 

select 1 as n 
union all 
--Output of anchor Query 
--> n=1 this will served as an input to the recursive query 
-->then in the recursive condition will be checked 
-->if true the statement is followed
-->Condition will be checked till the condition doesn't get false

--Recursive Query
select n+1 from [R CTE] where n<=4
)
select * FROM [r cte ]

---------------------
--factorial of n= 3
--3*2*1
--n=5
--5*4*3*2*1

-----******************************-----------------


with [R CTE] as (
--Anchor Query 

select 1 as n 
union all 

--Recursive Query
select n+1 from [R CTE] where n<=4 --TO Find factorial of a number n we need to pass a no. less than n here.

)

select exp(sum(log(n))) [Facotorial] from [R CTE]


