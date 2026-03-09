CREATE TABLE QUALITY (
ID INT identity(1,1),
owner_name VARCHAR(100),
category VARCHAR(50),
rating INT,
CONSTRAINT FK_QUALITY_Shop Foreign key (ID)
References Shop (ID)
);
 INSERT INTO QUALITY (owner_name, category,rating)
 VALUES ('Ramesh Kumar', 'Grocery',1),
 ('Anita Sharma', 'Clothing',8),
 ('Suresh Patel', 'Electronics',10),
('Neha Verma', 'Books',2),
('Amit Singh', 'General Store',66);

SELECT * FROM QUALITY;


