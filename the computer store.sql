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

Select Name, Price from Products where Price >= 180 and order by Price desc, Name;

Select * from Products, Manufacturers where Products.Manufacturer = Manufacturers.Code