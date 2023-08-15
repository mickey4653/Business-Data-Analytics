select ContactName, ContactTitle, CompanyName 
from Customers
where ContactTitle = 'Owner';

select Count(ContactName) from Customers;

select ContactName, ContactTitle, CompanyName 
from Customers
where ContactTitle != 'Owner';

select ContactName, ContactTitle, CompanyName, City 
from Customers
where ContactTitle = 'Owner' 
AND City = 'Bern';

-- check for owner from these cities
select ContactName, ContactTitle, CompanyName, City
from Customers
where ContactTitle = 'Owner' 
AND City = 'Bern' or city = 'Nantes';

-- using wild cards 
-- all names starting with Y
select ContactName, ContactTitle, CompanyName, City
from Customers
where ContactName like 'Y%';

select ContactName, ContactTitle, CompanyName, City
from Customers
where ContactName like '_an_%';

select ContactName, ContactTitle, CompanyName, City
from Customers
where ContactName like '%g';

-- to be specific
select ContactName, ContactTitle, CompanyName, City
from Customers
where ContactTitle = 'Owner' 
AND City in ('Bern','Nantes');

select * from Employees
where BirthDate > 01/01/2000;

--between clause
select * from Employees
where HireDate between '01/01/1992' and '01/01/1995';

--distinct clause
select distinct * from Customers;

select distinct ContactTitle from Customers;

