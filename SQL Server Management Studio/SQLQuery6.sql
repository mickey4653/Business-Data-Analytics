/**As the Analyst for the Northwind LLC, you have been asked for the following:
Create a Report that shows the following information about Companies that sell Products in
the Seafood Category (Your Report should show the following Columns)
1. Product Name
2. Unit Price
3. Company Name
4. Contact Name
5. Country
6. Fax (This should say "No Fax" if no fax information is available)
7. Grade
For the Grade column, use a CASE condition to show the following logic
If Unit Price is less than 10.00 label it "Cheap"
If Unit Price between 10.00 and 18.00 label it "Medium"
If Unit Price Greater than 18.00 label it "Expensive" **/

create View Seafood_ReportVW as
Select ProductName, UnitPrice, CompanyName, ContactName, Country, ISNULL(Fax, 'No Fax') as Fax,
CASE
	When UnitPrice < 10.00 Then 'Cheap'
	When Unitprice Between 10.00 and 18.00 Then 'Medium'
	Else'Expensive'
END AS Grade
From Products as P
Join Suppliers as S
ON P.SupplierID = S.SupplierID
Where CategoryID = (Select CategoryID from Categories where CategoryName like 'Seafood%')
Order by Grade


select * from Seafood_ReportVW
order by Grade

select * from Seafood_ReportVW
where Grade ='Cheap'
order by Grade