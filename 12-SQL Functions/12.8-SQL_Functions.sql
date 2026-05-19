

select * from customers 

--isnull
select isnull(null,'1st value null')

select isnull('abx',null)

select isnull(null,null)

--coalesce 
select coalesce('A','B','C')

select coalesce(NULL,'B','C')

select coalesce(NULL,NULL,'C')

SELECT customerid,email,phonenumber from customers

select customerid,isnull(email,'email NA'),isnull(phonenumber,'ph no NA') from Customers

select customerid,coalesce(email,phonenumber,'Contact NA') [COLESCE FUNCTION] FROM CUSTOMERS


