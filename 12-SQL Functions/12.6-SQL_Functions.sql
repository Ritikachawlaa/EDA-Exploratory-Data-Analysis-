

select * from ProfitData

--To add a new column that shows previous month's profit for each product

select * ,lag(Profit) over(partition by product  order by monthnumber asc ) [Lag Function]
from ProfitData

--We don't want product columnin the output but we want each month's total profit to be show by monthnumber & moonthname ,Also a 
--new column should be added to show previous month's total profit 

select monthnumber,monthname,sum(profit) [Total profit for month],
lag(sum(profit)) over(order by  monthnumber) [Previos month's total profit]
from ProfitData
group by monthnumber,monthname
order by monthnumber



