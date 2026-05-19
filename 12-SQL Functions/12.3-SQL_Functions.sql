


select * from students

select * ,ROW_NUMBER() over(partition by subject order by marks desc) as [Row Number Desc]
from students

select * ,ROW_NUMBER() over(partition by subject order by marks ) as [Row Number Asc]
from students

select * ,ROW_NUMBER() over(partition by student_name order by marks desc) as [Row Number desc]
from students

select * , rank() over(partition by student_name order by marks desc) [Rank desc]
from students

select * , rank() over(partition by subject order by marks desc) [Rank desc]
from students

select *,DENSE_RANK() over(partition by subject order by marks desc) [Dense Rank Desc]
from students

select *,DENSE_RANK() over(partition by student_name order by marks desc) [Dense Rank Desc]
from students

select *,DENSE_RANK() over(partition by student_name order by marks ) [Dense Rank ]
from students

