-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select p.productname as 'Product Name',
c.CategoryName as 'Category'
from Product as p
join Category as c
on c.Id = p.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.Id as 'Order id', 
sh.CompanyName as 'Shipper Company'
from [Order] as o
join Shipper as sh
on o.ShipVia = sh.Id
where o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select o.Id as 'Order id', 
p.ProductName as 'Product',
o.Quantity as 'quantity'
from Product as p
join [OrderDetail] as o
on o.ProductId = p.id
where o.Orderid = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select Id as OrderID, CompanyName as Customer, LastName as ProcessedBy
from [Order] as o
join Customer as c
on o.CustomerId = c.Id
join Employee as e
on o.EmployeeId = e.Id
