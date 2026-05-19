


select * from students

--Row Number ->incase a tie row numbers are assigned randomly
select * ,row_number() over(order by marks desc) as [Row Number]
from students

--Rank -> if there's tie next rank/ranks will be skipped
select *,rank() over(order by marks desc) as [Rank Function]
from Students

--Dense Rank -> if there's a tie rank will not be skipped
select *,DENSE_RANK() over(order by marks desc) [Dense Rank]
from students

-------------------------------

--Row Number ->incase a tie row numbers are assigned randomly
select * ,row_number() over(order by marks asc) as [Row Number]
from students

--Rank -> if there's tie next rank/ranks will be skipped
select *,rank() over(order by marks asc) as [Rank Function]
from Students

--Dense Rank -> if there's a tie rank will not be skipped
select *,DENSE_RANK() over(order by marks asc) [Dense Rank]
from students

-------------------------------------------





