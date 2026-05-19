

create table student_details(
	student_Name nvarchar(256),
	gender char(1),
	Age tinyint,
	Event_date date,
	Distance decimal(5,2)
);
--drop table student_details

Insert into student_details(student_Name,gender,Age,Event_date,Distance)
Values
('Raj Mehra','M',25,'2024-08-03',123.11)

Insert into student_details
values
('Nitin Singh','M',32,'2023-12-06',119.09)

select * from student_details