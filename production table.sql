-- select * from Production.Product;
-- SELECT NAME, COLOR, ProductNumber, ListPrice, Size  FROM Production.Product WHERE Size = 'L';
-- SELECT NAME, COLOR, ProductNumber, ListPrice, Size  FROM Production.Product WHERE Size != 'L';
-- SELECT NAME, COLOR, ProductNumber, ListPrice, Size  FROM Production.Product WHERE ListPrice > 500;
-- SELECT NAME, COLOR, ProductNumber, ListPrice, Size  FROM Production.Product WHERE Color < 'Red';
-- SELECT NAME, COLOR, ProductNumber, ListPrice, Size,SellStartDate  FROM Production.Product WHERE SellStartDate < '2013-05-30';
-- select NAME, SafetyStockLevel * ListPrice FROM Production.Product;
select NAME, SafetyStockLevel * ListPrice as dinero_invertido FROM Production.Product;