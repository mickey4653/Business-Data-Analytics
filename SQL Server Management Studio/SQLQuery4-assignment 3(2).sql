select * from Customers;
select * from Orders;


SELECT
    [dbo].[Customers].CustomerID,
    [dbo].[Customers].[City],
    [dbo].[Customers].[Country],
    COUNT(dbo.Orders.OrderID) AS Ordertotal 
FROM
    [dbo].[Customers]
JOIN
    [dbo].[Orders]  ON [dbo].[Customers].[CustomerID] = [dbo].[Orders].[CustomerID]
WHERE
     [dbo].[Customers].[Country]= 'USA' 
GROUP BY
  [dbo].[Customers].CustomerID,
    [dbo].[Customers].[City],
    [dbo].[Customers].[Country]
	
	order by Ordertotal desc;

select * from Employees

select  [EmployeeID],
[TitleOfCourtesy] as Title,
concat([LastName],' ',[FirstName]) as FullName, 
[Title] as JobTitle, 
[HireDate]
from [dbo].[Employees]
order by HireDate asc
 
 select  [EmployeeID],
[TitleOfCourtesy] as Title,
concat([LastName],' ',[FirstName]) as FullName, 
[Title] as JobTitle, 
[HireDate]
from [dbo].[Employees]
where HireDate = (select min(HireDate) from Employees)

 select  [EmployeeID],
[TitleOfCourtesy] as Title,
concat([LastName],' ',[FirstName]) as FullName, 
[Title] as JobTitle, 
[HireDate]
from [dbo].[Employees]
where HireDate = (select min(HireDate) from Employees)

 select  [EmployeeID],
[TitleOfCourtesy] as Title,
[LastName]+' '+[FirstName] as FullName, 
[Title] as JobTitle, 
[HireDate]
from [dbo].[Employees]
where HireDate = (select min(HireDate) from Employees)