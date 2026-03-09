CREATE TABLE PLACE(
ID INT ,
shop_name VARCHAR(100),
owner_name VARCHAR(100),
landmark varchar (100),
CONSTRAINT fk_PLACE_Shop Foreign key ( ID ) 
REFERENCES Shop (ID)
);



INSERT INTO PLACE (shop_name,owner_name,landmark)
VALUES ( 'Fresh Mart', 'Ramesh Kumar', 'BOM'),
('Style Hub', 'Anita Sharma','PARK'),
('Tech World', 'Suresh Patel', 'Pumphole'),
('Book Corner', 'Neha Verma', 'CShouse'),
('Daily Needs', 'Amit Singh', 'S.s Gali');


select * from PLACE;


DROP TABLE PLACE;



CREATE TABLE PLACE(
ID INT  identity(1,1),
shop_name VARCHAR(100),
owner_name VARCHAR(100),
landmark varchar (100),
CONSTRAINT fk_PLACE_Shop Foreign key ( ID ) 
REFERENCES Shop (ID)
);



INSERT INTO PLACE (shop_name,owner_name,landmark)
VALUES ( 'Fresh Mart', 'Ramesh Kumar', 'BOM'),
('Style Hub', 'Anita Sharma','PARK'),
('Tech World', 'Suresh Patel', 'Pumphole'),
('Book Corner', 'Neha Verma', 'CShouse'),
('Daily Needs', 'Amit Singh', 'S.s Gali');


select * from PLACE;

