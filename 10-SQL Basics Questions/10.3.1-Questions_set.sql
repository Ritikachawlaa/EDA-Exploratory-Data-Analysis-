


select * from Customers
select * from Orders
select * from Products


--1) Write an SQL query to find the names of customers who have placed an order.
select distinct CustomerName from Customers c inner join orders  o on o.CustomerID = c.CustomerID


--2) Find the list of customers who have not placed any orders.
select distinct CustomerName from Customers c left join orders o On o.CustomerID = C.CustomerID WHERE O.OrderID IS NULL

--3) List all orders along with the product name and price.
select distinct productname,price from Orders o join Products p on o.ProductID = o.ProductID  


--4) Find the names of customers and their orders, including customers who haven't placed any orders.
select distinct CustomerName , ORDERID from customers c join Orders o on o.customerID = c.CustomerID

--5) Retrieve a list of products that have never been ordered.
select distinct productname,p.ProductID from products p left join orders o on o.ProductID = p.ProductID where o.OrderDate is null

--6) Find the total number of orders placed by each customer.
select customername,count(orderid) from customers c inner join orders o on c.CustomerID = o.CustomerID
group by CustomerName

--OR 
select customername,count(orderid) from customers c left join orders o on c.CustomerID = o.CustomerID
group by CustomerName


--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
select distinct CustomerName, ProductName,o.productid,orderdate from customers c left join orders o on c.CustomerID = o.CustomerID  left join Products p on o.ProductID = p.productID



