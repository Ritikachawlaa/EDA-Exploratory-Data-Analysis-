

select * from Products

--Example 1 : Add a column to categorize each product into categories high,medium and low
select 
*,
case
	when price >500 then 'High'
	when price <= 500 and price >=200 then 'Medium'
	else 'Low'
end as [High/Medium/Low]
from Products

----------------Test
select 
*,
case
	when price >500 then 'High'
	when price <= 500 and price >=200 then 'Medium'
end as [High/Medium/Low]
from Products

---------------------Example2: Provide priority to each category nd sort the data according to that priority
select * FROM Products
order by 
case 
	when category in ('Electronics') then 1
	when category in ('Furniture') then 2
	else 3
end

------------------Test 

select * FROM Products
order by 
case 
	when category in ('Electronics') then 1
	when category in ('Furniture') then 2
	when category = 'Accessories' then 3
end

