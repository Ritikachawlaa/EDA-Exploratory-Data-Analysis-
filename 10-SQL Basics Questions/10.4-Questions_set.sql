
select * from Customers
select * from Orders
select * from Products

--1) Identify pairs of customers who live in the same country 
select c1.CustomerName,c2.CustomerName from Customers c1 join Customers c2 on c1.Country = c2.Country and c1.CustomerID <> c2.CustomerID and c1.CustomerID > c2.customerID


--2) Find the customer who has spent the most on their orders 

select customername from 
(select CustomerName,sum(price)  [Amount Spent],
DENSE_RANK() OVER(order by sum(price) desc) [DR]
from customers c inner join orders o on c.CustomerID= o.CustomerID inner join Products p on  o.productID = p.productID
group by CustomerName) m where DR = 1



--3)  Find the customers who have ordered more than one type of products

select CustomerName from customers c inner join orders o on c.CustomerID= o.CustomerID 
group by CustomerName
having count(productID) >1

--4) List all products and their corresponding orders, using a right join, including products that have never been ordered.
select OrderID,ProductName, p.ProductID from orders o right join products p on o.ProductID = p.ProductID


--5) Retrive all orders placed by customers from the USA 
select OrderID from customers c inner join orders o on c.customerID = O.CustomerID WHERE COUNTRY IN ('USA')

--6) Find the names of customers who have ordered a product priced above $500
select CustomerName from customers c inner join orders o on c.customerID = O.CustomerID inner join products p on o.ProductID = p.ProductID where Price >$500

--7) Find customers who have ordered the same product more than once
select distinct m.CustomerName from
(select CustomerName,ProductID, count(orderID) [Count] from customers c inner join orders o on c.customerID = O.CustomerID 
GROUP BY CustomerName,productID
having count(orderID)>1) m