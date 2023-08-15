SELECT TOP (1000) [EMP_NUM]
      ,[EMP_LNAME]
      ,[EMP_FNAME]
      ,[EMP_INITIAL]
      ,[EMP_HIREDATE]
      ,[DEPT_ID]
      ,[GENDER]
      ,[SALARY]
  FROM [SQLViz].[dbo].[Employee];

select * from Employee

update Employee set DEPT_ID = 500
where EMP_NUM = 69062


select * from Employee where DEPT_ID = 500

alter table [dbo].[Employee]
add EMP_EMAIL varchar(100),
COMMISSION decimal(10,2);



select * from Employee order by EMP_HIREDATE asc

select distinct * from Employee

--UPDATE [dbo].[Employee]
--SET [dbo].[COMMISSION] = 5000
--WHERE DEPT_ID IN (501, 502);

SELECT EMP_NUM, COUNT(*)
FROM Employee
GROUP BY EMP_NUM
HAVING COUNT(*) > 1;

select gender, count (GENDER) as total_of_Male_n_Female  from Employee group by GENDER


