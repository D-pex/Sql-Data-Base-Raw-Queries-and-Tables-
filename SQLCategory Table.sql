Create Database [LIBRARY PROJECT]  
Create Table Category (
CategoryId int identity (1,1)
Primary Key ,
CategoryName nvarchar (100),
);



select * from Category 


Insert Into Category ( CategoryName ) 
Values
('Fictional'),
('Non-Fictional');