

--Creating a table of Sales2
create table dbo.UpdatedSales(
	Category VARCHAR(50),
	SubCategory VARCHAR(50),
	SalesDate VARCHAR(50),
	Sales INT
);

Insert INTO dbo.UpdatedSales(Category,SubCategory,SalesDate,Sales)
Values
('Fruits','Apples','1st Jan',10),
('Fruits','Apples','2nd Jan',20),
('Fruits','Grapes','1st Jan',10),
('Fruits','Grapes','2nd Jan',20),
('Vegetables','Onion','1st Jan',30),
('Vegetables','Potato','1st Jan',10),
('Vegetables','Onion','2nd Jan',20);

select * from dbo.UpdatedSales

select Category,sum(Sales) [Total Sales] from dbo.UpdatedSales
GROUP BY Category

SELECT Category,SubCategory,sum(sales) [ Total Sales]
from dbo.UpdatedSales
group by Category,SubCategory