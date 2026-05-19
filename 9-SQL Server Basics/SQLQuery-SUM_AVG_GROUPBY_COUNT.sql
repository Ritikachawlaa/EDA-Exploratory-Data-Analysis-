

select * from dbo.Sales 

select sum(quantity)[Total Quantity] from dbo.sales

select sum(quantity)[Total Quantity],sum(totalamount) [Sum of Amount] from dbo.sales

select avg(quantity) [Average Quantity] from dbo.Sales

select avg(quantity) [Average Quantity],avg(totalamount) [Avg Amount] from dbo.Sales

select * from dbo.Sales

--Sum of Quantity , sum of totalamount, avg of quantity, avg of total amount, avg of total amount for each distinct product

select 
productid,
sum(quantity) as [Total Quantity],
sum(totalamount) as [Sum of  Amount],
avg(quantity) as [Avg Quantity sold],
avg(totalamount) as [Average Amount]
from dbo.Sales
group by productid

select * from dbo.Sales

--Sum of quantity, sum of amount, avg of quantity,avg of amount for distinct combinations of productid,storeid

select
productid,
storeid,
sum(quantity) [Total Quantity],
sum(totalamount) [Sum of Amount],
avg(quantity) [Avg of Quantity],
avg(totalamount) [Avg of Amount]
from dbo.sales
group by ProductID,storeid

select * from dbo.sales

select count(*) [Number of rows] from dbo.sales

select count(PaymentMethod) [Number of records] from dbo.sales -- null value doen't get count if column name is specified

select count( distinct productid) [Distinct Product] from dbo.sales

select paymentMethod, count(distinct paymentmethod) [Distinct Pay Mode]from dbo.sales
group by paymentMethod

select paymentMethod, count(paymentmethod) [Pay Mode]from dbo.sales
group by paymentMethod

select paymentMethod, count(*) [Pay Mode]from dbo.sales
group by paymentMethod