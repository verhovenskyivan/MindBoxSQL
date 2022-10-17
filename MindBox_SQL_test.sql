Create Table Products ( id INT Primary Key, "Name" TEXT);

Insert into Products values
(1, 'Clean Code'),
(2, 'RTX 4090'),
(3, 'Ryzen 7600x'),
(4, 'MacBook Pro M1');

Create Table Categories (
id INT primary key, "Name" Text);

insert into Categories values 
(1, 'Laptop'),
(2, 'CPU'),
(3, 'GPU'),
(4, 'Book');

Create table ProductCategories (
Productid INT FOREIGN KEY REFERENCES Products(id),
Categoryid INT FOREIGN KEY REFERENCES Products(id),
Primary key (Productid, Categoryid));

Insert into ProductCategories values 
(1,4),
(2,3),
(3,2),
(4,1);

Select P."Name" ,C."Name"
from Products P
Left join ProductCategories PC
on P.id = PC.Productid
Left join Categories C
on	 PC.Categoryid = c.id

