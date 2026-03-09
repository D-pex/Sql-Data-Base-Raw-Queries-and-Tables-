create table Products(
products_id int identity(1,1)
primary key ,
products_name varchar(50),
price decimal(10,2),
category varchar(100)
);


insert into products (products_name, price, category)
values 
('Laptop','999.99','Electronics'),
('Desk Chair','149.99','Furniture'),
('Smartphone','599.99','Electronics'),
('Notebook','2.99','Stationery'),
('Headphones','89.99','Electronics'),
('Coffee','49.99','Appliances'),
('Standing Desk','249.99','Furniture'),
('Tablet','399.99','Electronics'),
('Mouse','19.99','19.99'),
('Water Bottle','12.99','Stationary');

select *from Products 


update Products 
set category = 'Electronics'
where products_id = 9;   




create proc USP_Products  
@product_name varchar (50),
@price decimal (10,2) ,
@category varchar (100) 
as 
begin 
insert into Products (products_name,price,category)

values  
(@product_name,@price,@category)
end 
 
 exec USP_Products 'Laptop','999.99','Electronics'; 

 select * from  Products 




 exec USP_AddShopandProducts  'Fresh Mart','Ramesh Kumar','Delhi','9876543210', 'Laptop','999.99','Electronics'; 


create proc USP_AddShopandProducts 
@shop_name varchar (100),
@owner_name varchar (100),
@city varchar(50),
@contact_no varchar (15),
@product_name varchar (50),
@price decimal (10,2) ,
@category varchar (100) 
as 
begin  
 
 exec USP_Products 'Laptop','999.99','Electronics';     
exec USP_shop 'Fresh Mart','Ramesh Kumar','Delhi','9876543210';
 end
 
 exec USP_AddShopandProducts  'Fresh Mart','Ramesh Kumar','Delhi','9876543210', 'Laptop','999.99','Electronics'; 
 exec USP_AddShopandProducts 


 select * from  Products ;
 select * from  shop;