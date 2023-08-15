CREATE TABLE Students
(
stud_id INT NOT NULL,
stud_name NVARCHAR(50)  NOT NULL,
stud_address NVARCHAR(50)  NULL,
stud_address_2 NVARCHAR(50)  NULL,
stud_city    NVARCHAR(50)  NULL,
stud_state   NVARCHAR(5)   NULL,
stud_zip     NVARCHAR(10)  NULL,
stud_country NVARCHAR(50)  NULL,
stud_contact NVARCHAR(50)  NULL,
PRIMARY KEY (stud_id) );

--third way of creating a table
--trying2 is a new table name you would give
--usually for duplicate from one table to another
select * into [dbo].[Trying2] from [dbo].[Trying]

-- alter a table before you have any data in the table
select * from Students;

-- remove a columns from the table
Alter Table Students Drop Column [stud_address_2];

--add a column to a table
Alter Table Students Add stud_email nvarchar(100);

--change character limit 
Alter Table Students Alter column stud_email nvarchar(50);

--dropping of tables

drop table Trying2

-- to insert data

insert into [dbo].[SQLViz_Class] values (001, 'Michael','Adeniyi', 'M',34, '1804 mounnt pisgah lane')

-- to truncate
truncate table [dbo].[SQLViz_Class];

-- to rename table
exec sp_rename 'trying', 'people';
--or
ALTER TABLE old_table_name
RENAME TO new_table_name;
--or
RENAME TABLE old_table_name TO new_table_name;



-- create a table for courses

create table courses
(
course_id int not null,
course_name nvarchar(50),
course_unit int not null,
course_desc nvarchar(50),
lecturer_name nvarchar(50)
primary key(course_id),
student_id int not null foreign key references Students(Stud_id)
);

-- Assignment 1: Q1; create Employee table 
create table Employee 
(
EMP_NUM int not null,
EMP_LNAME varchar(20),
EMP_FNAME varchar(15),
EMP_INITIAL char(1),
EMP_HIREDATE DATE not null,
DEPT_ID char(3),
GENDER char(1) check (GENDER in ('M', 'F')),
SALARY decimal(6,2),
primary key (EMP_NUM)
);

-- Q2; update students table with course_id as foreign key
alter table Students Add course_id int not null;

alter table Students 
add constraint fk_courses
foreign key (course_id) references courses(course_id);

-- Q3; update courses table with stud_id as foreign key
alter table courses add stud_id int not null;

alter table courses
add constraint fk_students
foreign key (stud_id) references Students(stud_id);

alter table students
drop constraint fk_courses;

INSERT INTO Students VALUES(10001, 'John Smith', '100 Main Street', 'Los Angeles', 'CA', '90046', 'USA', NULL, 'Jsmith@Ntelegence.com',001);

INSERT INTO Students VALUES(10002, 'michael adeniyi', '1804 Mount Pisgah lane', 'Maryland', 'MD', '20903', 'USA', NULL, 'madeniyi@umd.edu',002);


select * from Students;
select stud_id,stud_name,stud_address, stud_city from Students

insert into [dbo].[Employee]
([EMP_NUM],[EMP_LNAME],[EMP_FNAME],[EMP_INITIAL],
[EMP_HIREDATE],[DEPT_ID],[GENDER],[SALARY])
values 
(68319,'News', 'John', 'G', '11/8/2000', 502, 'M', 550000),
(66928,'Johnson', 'Lamar', 'O', '1/1/2019', 500, 'M', 750000),
(67832,'Washington', 'Kerry', 'S', '6/22/2014', 501, 'F', 450000),
(65646,'Alonzo', 'Maria', 'D', '8/22/2011', 500, 'F', 250000),
(67858,'Smith', 'William', null, '11/15/2004', null, 'M', 175000),
(66929,'Johnson', 'Lamarante', 'O', '1/1/2019', 500, 'M', 750000),
(69062,'Ramoras', 'Anne', 'K', '11/15/2007', 500, 'F', 185000),
(64989,'Michaels', 'John', null, '1/1/2019', 502, null, 275000),
(65271,'Peterson', 'Samantha', 'B', null, 500, 'F', null),
(67857,'Rudolph', 'Paul', 'D', '2/11/2015', 500, 'M', 300000);

alter table Employee alter column EMP_HIREDATE date null;

Alter Table Employee Alter column SALARY decimal(6,0);

truncate table [dbo].[Employee];
 
select * from [dbo].[Employee];

SELECT TOP (5) * FROM [SQLViz].[dbo].[Employee]

update [dbo].[Employee] 
set [EMP_HIREDATE] = '11/08/2000' 
where EMP_NUM = 68319;

select * from [dbo].[Employee]
where[EMP_NUM] = 68319;

update [dbo].[Employee]
set [EMP_INITIAL] = 'M'
where [EMP_NUM] = 67858;

-- modifying different same values for different columns
update [dbo].[Employee]
set [GENDER] = 'M'
where [EMP_NUM] in(65271,65646) ;

-- modifying two columns 
update [dbo].[Employee]
set [EMP_HIREDATE] = '1/1/2002',
DEPT_ID ='502'
where [EMP_NUM] = 65271;

delete from Employee 
where EMP_NUM = 66928;

update [dbo].[Employee]
set [EMP_NUM] = 66928
where [EMP_NUM] = 66929;

select * from Employee
order by EMP_HIREDATE desc;

select * from Employee
order by EMP_HIREDATE asc;