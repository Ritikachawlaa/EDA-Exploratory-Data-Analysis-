

select * from students

create nonclustered index ix_1 on students (id)

--We can have more than one non clustered indexes
--These indexes are slightly slower than the clustered indexes

create nonclustered index ix_2 on students (gender desc,age asc)

drop index ix_2 on students

