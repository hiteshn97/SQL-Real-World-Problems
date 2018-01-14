# https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store

SELECT Name FROM Products;

SELECT Name, Price FROM Products;

SELECT Name From Products where Price <= 200;

Select * From Products where Price <= 120 and Price >= 60;
Select * From Products where Price between 60 and 120

Select Name,Price*100 from Products;
Select Name, Price*100 as PriceCents from Products;

Select Avg (Price) from Products;

Select Avg (Price) from Products where Manufacturer = 2;

Select Count(*) from Products where Price >= 180;

Select Name, Price from Products where Price >= 180 ana	d order by Price desc, Name;

Select * from Products, Manufacturers where Products.Manufacturer = Manufacturers.Code

Select Products.Name, Price, Manufacturers.Name from Products,Manufacturers where Products.Manufacturer = Manufacturers.Code

Select Avg(Price), Manufacturers.Name
	from Products, Manufacturers 
	where Products.Manufacturer = Manufacturers.Name
	group by Manufacturers.Name ;

Select Avg(Price), Manufacturers.Name from Products, Manufacturers 
	where Products.Manufacturer = Manufacturers.Name
	group by Manufacturers.Name
	having Avg(Price) >= 150;

Select Name, Price from Products where Price = Min(Price);


# 16. This one was tricky.
# Select the name of each manufacturer along with the name and price of its most expensive product.
Select M.Name, P.Name,Price
	from Manufacturers M, Products P
	where M.Code = P.Manufacturer
	and P.Price = 
	(
		Select Max(Products.Price) from Products
		where Products.Manufacturer = M.code
	);

Insert into Products( Name, Price, Manufacturer) values ('Loudspeaker', 70,2);

Update Products Set Name='Laser Printer' where Code = 8;

Update Products Set Price = Price * (0.9)

Update Products Set Price = Price * (0.9) where Price >= 120