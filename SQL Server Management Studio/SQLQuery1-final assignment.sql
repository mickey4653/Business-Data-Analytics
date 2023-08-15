use SQLViz;

create table restaurant_menu
(
MenuID int not null primary key,
Meal nvarchar (20),
Item nvarchar (20),
Cost int,
CaloriesID int,
Calories int 
)

create table restaurant_calories
(
CaloriesID int not null primary key,
Calories int,
Calories_From_Fat int
)

alter table [dbo].[restaurant_menu]
add CaloriesID int

select * from restaurant_menu
select * from restaurant_calories

alter table [dbo].[restaurant_menu]
add constraint fk_calories
foreign key (CaloriesID) references restaurant_calories(CaloriesID)

alter table [dbo].[restaurant_menu]
add foreign key (CaloriesID) references restaurant_calories(CaloriesID)

alter table [dbo].[restaurant_menu]
drop constraint fk_calories

drop table [dbo].[restaurant_menu]

-- EXEC sp_rename '[dbo].[restaurant_menu].Calories', 'CaloriesID';
-- EXEC sp_rename '[dbo].[restaurant_menu].CaloriesID', 'Calories';

 truncate table [dbo].[restaurant_menu]

-- EXEC sp_rename 'your_table.old_column_name', 'new_column_name', 'COLUMN';



insert into restaurant_menu values
(1,'Breakfast','Oatmeal',5,2,300 ),
(2,'Breakfast','Omelette',7,1,600 ),
(3,'Lunch','Clam Chowder',10,3,650 ),
(4,'Lunch','Steak',12,5,700 ),
(5,'Lunch','Burger',9,7,700 ),
(6,'Dinner','Clam Chowder',10,3,650 ),
(7,'Dinner','Steak',12,5,700 ),
(8,'Dinner','Burger',9,7,700 ),
(9,'Desert','Apple pie',6,4,450 ),
(10,'Desert','Chocolate Cake',5,6,550 )

insert into restaurant_calories values(
1,500,300 ),
(2,300,75 ),
(3,650,250 ),
(4,450,280 ),
(5,700,300 ),
(6,550,350 ),
(7,700,350 ),
(8,750,300 ),
(9,600,250 ),
(10,900,300 )

select distinct * from restaurant_menu order by Meal desc

select Item, count(Item) as no_of_appearance from restaurant_menu 
group by Item

create view Healthy_KPI_Report as
select Meal, Item,Cost, Calories_From_Fat,
CASE
	when [dbo].[restaurant_menu].Calories <= 350 then 'Healthy'
	when [dbo].[restaurant_menu].Calories between 351 and 599 then 'Fair'
	when [dbo].[restaurant_menu].Calories >= 600 then 'Unhealthy'
END AS healthy_kpi
from [dbo].[restaurant_menu]
join [dbo].[restaurant_calories] on 
[dbo].[restaurant_calories] .CaloriesID = [dbo].[restaurant_menu].CaloriesID

select * from Healthy_KPI_Report

select Item, count(Item) as no_of_appearance from restaurant_menu 
group by Item
having count(Item) =1

select m.Meal, m.Item, average_cost.average_meal_cost
from [dbo].[restaurant_menu] as m
join (
	select Meal, avg(Cost) as average_meal_cost
	from [dbo].[restaurant_menu]
	group by Meal
) as average_cost on m.Meal = average_cost.Meal 

-- select Meal,Item, avg(Cost) over(partition by meal) as average_meal_cost from [dbo].[restaurant_menu]

create table table1
(
tableID int not null,
)

create table table2
(
tableID int not null,
)
select * from table1
select * from table2 



insert into table1 values(1),(2),(3),(4),(5)
insert into table2 values(1),(2),(3),(4),(5)

select * from table1,table2
select * from table1
cross join table2
