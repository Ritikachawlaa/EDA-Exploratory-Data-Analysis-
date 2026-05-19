

select * from Students 

create clustered index ix_1 on students (id)

create clustered index ix_2 on students(id desc)

drop index ix_1 on students

drop index ix_2 on students

create clustered index ix_3 on students (gender desc, age asc)


