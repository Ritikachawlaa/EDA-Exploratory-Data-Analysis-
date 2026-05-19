

select * from dbo.Sales
where TotalAmount>=161

select productid, sum(totalamount) [Sum of sales] from dbo.Sales
group by ProductID
having sum(totalamount)<700

select productid, sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by ProductID

select productid, sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250

select productid, sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by ProductId desc

select productid, sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by ProductID
having sum(totalamount)>=250
order by sum(totalamount) asc

