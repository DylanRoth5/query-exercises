
-- SELECT * from HumanResources.Employee;
-- SELECT * from Production.Product where ListPrice>50;
-- SELECT * from Person.Address where StateProvinceID!=79;
-- SELECT * from Sales.SalesOrderHeader where TerritoryID=5;
-- SELECT * from HumanResources.Employee  where MaritalStatus = 'M' and VacationHours>50;
-- SELECT * from Person.Address where AddressLine1 like '%Hill Street%' and StateProvinceID between 58 and 79;
-- SELECT * from Sales.SalesOrderHeader 
-- SELECT BusinessEntityID,LastName from Person.Person where LastName like 'J%' or LastName like 'S%';


-- exec sp_columns from HumanResources.EmployeePayHistory;
-- GO
declare @average FLOAT 
set @average = (select AVG(all Rate) from HumanResources.EmployeePayHistory)
PRINT @average
GO
SELECT * FROM HumanResources.EmployeePayHistory where Rate > @average;
GO