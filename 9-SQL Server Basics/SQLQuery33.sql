

-- Like operator

create table Employees_US ( 
	EmployeeID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Department Varchar (50)
);

--Insert sample data into Employees table
Insert INTO Employees_Us (EmployeeID,FirstName,LastName, Department ) 
Values
(1,'Alice','Smith','Finance'),
(2,'Bob','Johnson','Engineering'),
(3,'Charlie','Williams','Marketing'),
(4,'Diana','Brown','Finance'),
(5,'Edward','Jones','Engineering'),
(6,'Fiona','Garcia','Marketting'),
(7,'George','Miller','Finance'),
(8,'Hannah','Wilson','Engineering');

