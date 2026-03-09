create table stud_inform (
id int identity (1,1)
primary key ,
FirstName varchar (15), 
LastName varchar (20),
DateofBirth date ,
Gender varchar  (1),
Email_Address varchar (40),
Phone_Number varchar (12),
Home_address  varchar (50) 
) ;


insert into stud_inform (  FirstName,LastName,DateofBirth, Gender,Email_Address,Phone_Number,Home_address)
values 
('Rohit', 'Dhar', '2000-03-15', 'M', 'dhar.hit@email.com', '1234765890', 'pipal ke ped ke pass'),
('Aayushi', 'Singh', '1999-07-22', 'F', 'singh.yush@email.com', '0985672341', 'kali mandir road '),
('Anuja', 'Verma', '2001-05-30', 'F', 'anuj.vvma@email.com', '1234432675', 'sarwajanik swa road '),
('Yash', 'Sahu', '2000-11-05', 'M', 'Shau.y@email@email.com', '8989765012', 'db mall 302 gt road '),
('Mohit', 'Verma', '2001-02-10', 'M', 'Mohit.verma@email.com', '3456437890', 'pop nad candy naer hiv road'),
('Avni', 'Gupta', '2000-09-12', 'F', 'sophia.martinez@email.com', '8768905463', 'skybridge near tapri'),
('Shiva', 'Thakre', '1998-12-01', 'M', 'Thakre.sh@email.com', '4567654890', 'aapna agv road '),
('Aarti', 'Meena', '2001-04-22', 'F', 'Artumeena@email.com', '4567864342', 'shlinikitan school near teastall'),
('Deep', 'Mathur', '2000-06-17', 'M', 'mathur.d@email.com', '9789065432', 'bmw market road'),
('Katya', 'Rodriguez', '1999-10-29', 'F', 'ava.rodriguez@email.com', '8765567543', 'near cr.house');


SELECT * FROM stud_inform; 



DROP TABLE stud_inform ; 

--NEW TABLE AFTER DROP DUE TO DUPLICATE DATA INSERTION 


create table stud_inform (
id int identity (1,1)
primary key ,
FirstName varchar (15), 
LastName varchar (20),
DateofBirth date ,
Gender varchar  (1),
Email_Address varchar (40),
Phone_Number varchar (12),
Home_address  varchar (50) 
) ;


insert into stud_inform (  FirstName,LastName,DateofBirth, Gender,Email_Address,Phone_Number,Home_address)
values 
('Rohit', 'Dhar', '2000-03-15', 'M', 'dhar.hit@email.com', '1234765890', 'pipal ke ped ke pass'),
('Aayushi', 'Singh', '1999-07-22', 'F', 'singh.yush@email.com', '0985672341', 'kali mandir road '),
('Anuja', 'Verma', '2001-05-30', 'F', 'anuj.vvma@email.com', '1234432675', 'sarwajanik swa road '),
('Yash', 'Sahu', '2000-11-05', 'M', 'Shau.y@email@email.com', '8989765012', 'db mall 302 gt road '),
('Mohit', 'Verma', '2001-02-10', 'M', 'Mohit.verma@email.com', '3456437890', 'pop nad candy naer hiv road'),
('Avni', 'Gupta', '2000-09-12', 'F', 'sophia.martinez@email.com', '8768905463', 'skybridge near tapri'),
('Shiva', 'Thakre', '1998-12-01', 'M', 'Thakre.sh@email.com', '4567654890', 'aapna agv road '),
('Aarti', 'Meena', '2001-04-22', 'F', 'Artumeena@email.com', '4567864342', 'shlinikitan school near teastall'),
('Deep', 'Mathur', '2000-06-17', 'M', 'mathur.d@email.com', '9789065432', 'bmw market road'),
('Katya', 'Rodriguez', '1999-10-29', 'F', 'ava.rodriguez@email.com', '8765567543', 'near cr.house');


SELECT * FROM stud_inform;


CREATE TABLE [SUBJECT] (
SUBID INT IDENTITY ( 1,1 )
PRIMARY KEY ,
[SUBJECT NAME ] VARCHAR (100),
[SUBJECT CODE ] VARCHAR (100) 
); 
INSERT INTO [SUBJECT] ([SUBJECT NAME], [SUBJECT CODE])
VALUES
('Mathematics', 'MTH101'),
('Physics', 'PHY102'),
('Chemistry', 'CHM103'),
('Biology', 'BIO104'),
('English', 'ENG105'),
('Computer Science', 'CSC106'),
('History', 'HIS107'),
('Geography', 'GEO108'),
('Political Science', 'POL109'),
('Economics', 'ECO110');


SELECT * FROM [SUBJECT] ;
SELECT * FROM stud_inform;





--YE TABLE HAI SUBJECT ALOTMENT WAALA  

CREATE TABLE [SUBJECT ALOT] ( 
ALOTID INT  IDENTITY ( 1,1 ) 
PRIMARY KEY ,
id INT NOT NULL ,
SUBID INT NOT NULL,  
FOREIGN KEY (id) REFERENCES stud_inform(id),  
FOREIGN KEY (SUBID) REFERENCES [SUBJECT](SUBID)
);

SELECT * FROM [SUBJECT ALOT]; 


 INSERT INTO [SUBJECT ALOT] (id , SUBID ) 
VALUES 
(1,4),
(1,1),
(1,2),
(2,1),
(2,9),
(2,7),
(3,3), 
(3,6),
(3,1),
(4,7),
(4,8),
(4,9),
(5,8),
(5,2),
(5,9),
(6,4),
(6,5),
(6,5),
(7,3),
(7,6),
(7,1),
(8,5),
(8,4),
(8,7),
(9,5),
(9,1),
(9,4),
(10,5),
(10,1),
(10,10) ;  
 




SELECT stud_inform.FirstName,stud_inform.LastName, stud_inform.Gender,SUBJECT.SUBID,SUBJECT.[SUBJECT CODE ],SUBJECT.[SUBJECT NAME ]
FROM  stud_inform 
INNER JOIN SUBJECT ON SUBJECT.SUBID = stud_inform.id ;


SELECT stud_inform.FirstName,stud_inform.LastName, stud_inform.Gender,SUBJECT.SUBID,SUBJECT.[SUBJECT CODE ],SUBJECT.[SUBJECT NAME ],[SUBJECT ALOT].ALOTID
FROM  [SUBJECT ALOT]  
INNER JOIN SUBJECT ON SUBJECT.SUBID = [SUBJECT ALOT].SUBID
INNER JOIN stud_inform ON stud_inform.id = [SUBJECT ALOT].id; 






