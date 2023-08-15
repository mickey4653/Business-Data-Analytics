--getdate()

select *, Datediff(year, BirthDate, getdate()) as Age from Employees;

select Datediff(year, BirthDate, getdate()) as AgeYear, Datediff(Month, BirthDate, getdate()) as AgeMonth from Employees

select Datediff(year, BirthDate, getdate()) as AgeYear, Datediff(MM, BirthDate, getdate()) as AgeMonth from Employees

select Datediff(year, BirthDate, getdate()) as AgeYear, DatePart(MM, BirthDate)as birthMonth
from Employees

select Datediff(year, BirthDate, getdate()) as AgeYear, DatePart(Month, BirthDate)as birthMonth
from Employees

select Datediff(year, BirthDate, getdate()) as AgeYear, DateName(Month, BirthDate)as birthMonth
from Employees

-- to be checked again
select Datediff(year, BirthDate, getdate()) as AgeYear, Dateadd(year, 5, Datediff(year, BirthDate, getdate()))as birthAdd
from Employees

-- is null or not null values
select CompanyName, ContactName, Fax
from Customers
where Fax is null
order by CompanyName

select CompanyName, ContactName, Fax
from Customers
where Fax is not null
order by CompanyName

select CompanyName, ContactName, ISNULL(Fax, 'No Fax') as fax
from Customers
order by CompanyName

-- case statements(when then else)
