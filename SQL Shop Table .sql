CREATE TABLE Shop (
    ID INT identity(1,1)
	PRIMARY KEY,
    shop_name VARCHAR(100),
    owner_name VARCHAR(100),
    category VARCHAR(50),
    city VARCHAR(50),
    contact_no VARCHAR(15)
);

 Select * From Shop;


 INSERT INTO Shop (shop_name, owner_name, category, city, contact_no) 
 VALUES
( 'Fresh Mart', 'Ramesh Kumar', 'Grocery', 'Delhi', '9876543210'),
( 'Style Hub', 'Anita Sharma', 'Clothing', 'Mumbai', '9123456780'),
( 'Tech World', 'Suresh Patel', 'Electronics', 'Ahmedabad', '9988776655'),
( 'Book Corner', 'Neha Verma', 'Books', 'Jaipur', '9012345678'),
( 'Daily Needs', 'Amit Singh', 'General Store', 'Lucknow', '9090909090');

ALTER TABLE shop
ADD opening_date DATE;


update Shop
set opening_date = '2005-10-9'
where ID = 1;

update Shop
set opening_date = '2007-10-9'
where ID = 2; 


update Shop
set opening_date = '2002-10-9'
where ID = 3; 


update Shop
set opening_date = '2009-10-9'
where ID = 4; 



update Shop
set opening_date = '2007-11-9'
where ID = 5; 

SELECT * FROM Shop;


ALTER TABLE Shop 
ADD monthly_profit int ;

update Shop
set monthly_profit =10000
where ID = 1;


update Shop
set monthly_profit =10560
where ID = 2;



update Shop
set monthly_profit =10223
where ID = 3;


update Shop
set monthly_profit =10978
where ID = 4 ;


update Shop
set monthly_profit =12220
where ID = 5;





SELECT * FROM Shop;

-- greater count function 

SELECT COUNT (monthly_profit) as monthly_profit
FROM Shop
WHERE monthly_profit > 10000;

--smaller count function 

 SELECT COUNT (monthly_profit) as monthly_profit
FROM Shop
WHERE monthly_profit < 10000;


-- equal count function 

SELECT COUNT (monthly_profit) as monthly_profit
FROM Shop
WHERE monthly_profit = 10000;



 -- average count function 

 select avg  ( monthly_profit) as monthly_profit 
 from Shop;
 
 -- min count function 

 select min (monthly_profit) as monthly_profit
 from Shop; 


 -- max count function 
  

 select max  (monthly_profit) as monthly_profit 
 from Shop;



-- wildcard  m% ( m-percent sign ) functions 


select * from Shop
where contact_no like '9%';
  
  --// for using wild cards use column name that  is needed to be search  ( sgf% for prefix ) and ( %ghtfdj suffix )


select * from Shop
where  shop_name like 'f%';

--  wildcard  _ ( underscore sign)  function 
 

select *  from Shop 
 where  category like ('groc_ry') ;



 --// for using wild cards use column name that  is needed to be search 



 select *  from Shop 
 where  category like 'groc_ry'
 and city like 'del_i';


----  wildcard [ ]  after this % is neccesary ( sq bracket for range  sign)  function 


select * from Shop
where owner_name like '[R-r]%';


-- ^ ( not sign for live that particular data and find alll others ) function 



select * from Shop
where owner_name like '[^R-r]%';

--- joins 
-- inner join 



--- ON IMPORTANT HAI 

select Shop.owner_name, PLACE.landmark, Shop.contact_no,PLACE.shop_name
from Shop
INNER JOIN PLACE  ON Shop.ID = PLACE.ID;


 ---- LEFT OUTER JOINS  

SELECT Shop.contact_no,
Shop.opening_date,
PLACE.ID,
PLACE.landmark
FROM PLACE
 LEFT OUTER JOIN Shop ON Shop.ID = PLACE.ID; 



 -- FULL OUTER JOIN  


 SELECT Shop.*,
 PLACE.landmark 
FROM Shop
 LEFT OUTER JOIN PLACE ON  Shop.ID = PLACE.ID; 



 SELECT * FROM Shop;
 SELECT * FROM PLACE;

 SELECT 
    S.shop_name, 
    S.owner_name, 
    P.landmark
FROM Shop S
OUTER APPLY (
    SELECT landmark 
    FROM PLACE 
    WHERE PLACE.ID = S.ID
) P;




SELECT 
    S.shop_name, 
    S.owner_name, 
    P.landmark
FROM Shop S
OUTER APPLY (
    SELECT landmark 
    FROM PLACE 
    WHERE PLACE.ID = S.ID
) AS P;



select * from Shop; 


alter table Shop 
add IsActive bit  not null Default 1 ; 




select Distinct  ID,shop_name ,owner_name,category,contact_no,opening_date,monthly_profit,IsActive 
from  Shop ;


drop table Shop