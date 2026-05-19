

select * from dbo.Sales

select max(totalamount)  [Maximum Amount ] from dbo.Sales

select max(SaleDate) [Max SalesDate] from dbo.Sales

select max(PaymentMethod) [Max Pay Method] from dbo.Sales

--Maximum Quantity sold for each productID

select ProductID,max(Quantity) [Maximum Quantity] from dbo.Sales
group by ProductID


select * from dbo.Sales

--Maximum Total Amount for all distinct dates in saledate column

select saledate,max(totalamount) [Maximum Total Amount] from dbo.Sales
group by saledate