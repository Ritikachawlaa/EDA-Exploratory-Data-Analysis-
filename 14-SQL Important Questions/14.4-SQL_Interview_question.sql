

select * from ReportingStructure

select a.employeeName [Manger], b.employeename [Reportee]
from ReportingStructure a inner join ReportingStructure b 
on  a.employeeID = b.managerID

union all 

select employeename,null[Manager] from reportingstructure
where managerid is null





