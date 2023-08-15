-- open specific database in use
 use [SQLViz]; 

 -- creating a table
Create Table SQLViz_Class
(
StudentID Int,
FirstNames nvarchar(20),
LastNames nvarchar(20),
Gender nvarchar(10),
Age Int,
Address varchar(250),
);

-- to select the table
select * from [dbo].[SQLViz_Class];

