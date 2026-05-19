

--Copying Data from existing table to the new table 

--drop table dbo.Employee_US

--Case 1 : The new table simply doesn't exist
--Case 2 : The new table structure/New table exists

--Case 1:
select * from dbo.Sales

--All columns were copied from existing table
--This statement will result in the creation of New_Table_1 which will be having structure & records both
-- same as that of dbo.sales table 
SELECT * INTO New_Table_1 from dbo.Sales

-------------------------Certain columns to be copied 

drop table New_Table_1

SELECT ProductID,Quantity INTO New_Table_1 from dbo.Sales

select * from New_Table_1

--CASE 2 : 

select top 0 * INTO NEW_TABLE_2 FROM dbo.sales -- **************************

select * from NEW_TABLE_2

INSERT INTO NEW_TABLE_2 SELECT * FROM DBO.SALES 

------------Copying certain columns 

select * into new_table_3 from dbo.sales where 1=0 -- ****************************

select * from new_table_3

Insert Into new_table_3 (ProductID,SaleDate) select PRODUCTid,saledate from dbo.sales

