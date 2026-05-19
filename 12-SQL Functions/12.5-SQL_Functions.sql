

SELECT * FROM ProfitData

---To add a new column that shows next months profit for rach product 

select * ,lead(Profit) over(partition by product order by monthnumber) [Next Month's Profit]
from ProfitData

--We don't want product column in the output but we want each month's total profit to be shown by month no. and month name
--also a new column should be added to show next month's total profit 

select MonthNumber,MonthName,sum(profit) [Total Profit],
lead(sum(profit)) over(order by monthnumber asc) [ Next Month Rotal Profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber




