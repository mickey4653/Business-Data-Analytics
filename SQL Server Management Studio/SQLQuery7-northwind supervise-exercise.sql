select * from [dbo].[Products];

select * from [dbo].[Customers];

select [CompanyName] from [dbo].[Shippers]

select [CompanyName], [ContactTitle], [Phone] from [dbo].[Suppliers]

select * from [dbo].[Orders] order by ShipCity asc

select * from [dbo].[Employees];

select [EmployeeID],[FirstName],[LastName],[Address],[City],[Region],[PostalCode] from Employees
where BirthDate between '01/01/1960' and '12/31/1966';

select FirstName, LastName, Country from [dbo].[Employees] where Country like '%K'

-- update [dbo].[Employees] set

-- negation clause 
select [EmployeeID],[FirstName],[LastName],[Address],[City],[Region],[PostalCode],[BirthDate] from Employees
where not BirthDate between '01/01/1960' and '12/31/1966';

-- Agregate Function
-- AVG
-- avg of all unit price from product table

select * from Products

SELECT AVG([UnitPrice]) as average_value
FROM Products;

-- count()
select count(distinct ShipCity) from Orders

--sum
SELECT sum([Quantity])
FROM [dbo].[Order Details];

-- max
select min(UnitPrice) from Products

--min
select max(UnitPrice) from Products

-- GroupBy
select avg(UnitPrice), ProductName from Products Group By ProductName

select max(UnitPrice), ProductID, ProductName from Products
Group By ProductID, ProductName 

select max(UnitPrice), Count (ProductID), ProductName from Products
Group By  ProductName 

select avg([UnitPrice]), Count ([ProductID]), Discount from [dbo].[Order Details]
Group By  Discount 
Having Count([ProductID]) > 1

select avg([UnitPrice]), Count ([ProductID]) from [dbo].[Order Details]
Having Count([ProductID]) > 1

select Products.UnitPrice, Products.ProductID, Products.SupplierID from Products

--aliasing table name 
select P.UnitPrice, P.ProductID, P.SupplierID from Products as P

