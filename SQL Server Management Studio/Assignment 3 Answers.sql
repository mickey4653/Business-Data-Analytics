Use SQLViz
Select * From Employee
Where EMP_NUM = 69062

Update Employee
Set DEPT_ID = 502
Where EMP_NUM = 69062

Select * From Employee
Where DEPT_ID = 500

ALter Table Employee 
Add EMP_EMAIL Nvarchar(50)

ALter Table Employee 
Add COMMISSION INT

Update Employee
Set Commission = 5000
Where DEPT_ID in (501, 502)

Select top 1 * From Employee
Order by EMP_HIREDATE Asc

Select Min(EMP_HIREDATE), EMP_FNAME, EMP_LNAME, EMP_NUM, DEPT_ID, DATEDIFF(MM, Emp_Hiredate, Getdate()) Year_of_Service
From Employee
Where EMP_HIREDATE = '2000-11-08'
Group By DEPT_ID, EMP_FNAME, EMP_LNAME, EMP_NUM, EMP_HIREDATE

Select Min(EMP_HIREDATE) From Employee

Select Emp_Num, Count(EMP_NUM) as Duplicate  From Employee
Group by EMP_NUM
Having Count(EMP_NUM) > 1
Order by Duplicate

Select Gender, Count(Gender) as TotalM_F From Employee
Group by Gender

Select Gender, Count(Gender) as TotalM_F From Employee
Where Gender = 'M' or Gender = 'F'
Group by Gender
-- or
Select Gender, Count(Gender) as TotalM_F From Employee
Where Gender in('M','F')
Group by Gender

Select top 5 * From Customers
Select top 5 * From [dbo].[Employees]

Select C.CustomerID, City, Country, Count(OrderID) as OrderTotal
From Customers as C
Join Orders as O
On C.CustomerID = O.CustomerID 
Where Country = 'USA'
Group By C.CustomerID, City, Country
Order By OrderTotal Desc

Select top 1 EmployeeID, TitleOfCourtesy as Title, FirstName + ' ' + LastName as FullName, Title as JobTitle, Hiredate
From Employees
Order by BirthDate ASC

Select 'I am a' + ' ' + Title From Employees

--Assignment
Mrs. Margaret Peacock is the oldest employee in our Organization. She is a Sales Representative and was hired in 1993.

select * from Employees

select [EmployeeID], [TitleOfCourtesy], ([LastName] + ' ' + [FirstName]) as Fullname, max([HireDate]),  DATEDIFF(MM, [HireDate], Getdate()) yearsOfService from Employees
where [EmployeeID]=4
group by [EmployeeID],[TitleOfCourtesy], [LastName],[FirstName],[HireDate] 


select [TitleOfCourtesy] +' '+ ([FirstName] + ' ' + [LastName]) + ' is the oldest employee in our organization. ' + 
'She is a ' + Title + ' and was hired in 1993' as ConcatinatedEmployees
from Employees
where [EmployeeID]= 4



