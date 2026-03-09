create table EMP( 
ID INT IDENTITY (1,1)
PRIMARY KEY ,
EMP_NAME VARCHAR (10),
DEPARTMENT  VARCHAR (100),
SALARY VARCHAR (50),
CONTACT_no VARCHAR (15)
);

INSERT INTO EMP ( EMP_NAME,	DEPARTMENT, SALARY, CONTACT_no)
VALUES
('DHEERAJ', 'IT', '20000', '9090123456'),
('ROHAN', 'HR', '14000','4321567890'),
('NEETA','P.SOLUTION','40000','6543217890'),
('AVNI','DEVLOPER','50000', '4321567809'),
('JIYA','IT','45000','7621435890' ),
('DIVYANSH','IT','34000','8765432109'),
('SARTHAK','HR','34090','2345617890'),
('DIBBU','DEVLOPER','24000','7654123890'),
('NIKHIL','P.SOLUTION','36090','9087612354'),
('NIVA','HR','24590','2345167809'),
('KALU', 'DEVELPOR', '32890','7652341098');

SELECT * FROM EMP;



SELECT DEPARTMENT,  MAX(SALARY) AS  SALARY 
FROM EMP
GROUP BY DEPARTMENT ;




 SELECT e.*,
 MAX (SALARY) OVER(  )  AS HIGH_SALARY 
  FROM EMP e;


SELECT e.*,
ROW_NUMBER () OVER ( PARTITION BY DEPARTMENT  ORDER BY ID) AS RN 
FROM EMP e;


SELECT * FROM (
SELECT e.*,
ROW_NUMBER () OVER ( PARTITION BY DEPARTMENT  ORDER BY ID) AS RN 
FROM EMP e ) X
WHERE X.RN <3;


SELECT e.*,
RANK  () OVER ( PARTITION BY DEPARTMENT  ORDER BY SALARY DESC) AS RNK
FROM EMP e ;


	 SELECT e.*,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
	RANK () OVER ( PARTITION BY DEPARTMENT  ORDER BY SALARY DESC) AS RNK,
	 DENSE_RANK () OVER (PARTITION BY DEPARTMENT  ORDER BY SALARY DESC) AS  DENSE_RNK
	FROM EMP e ;


