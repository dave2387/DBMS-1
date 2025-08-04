USE CSE_3B_386


--C part ma deposit_detail table drop karelu che etle output nahi avee

--PART-A-


--Add two more columns City VARCHAR (20) and Pincode INT. 
ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20),
	PINCODE INT;

SELECT * FROM DEPOSIT

--Add column state VARCHAR(20). 
ALTER TABLE DEPOSIT
ADD STATE VARCHAR(20);

SELECT * FROM DEPOSIT

--Change the size of CNAME column from VARCHAR (50) to VARCHAR (35). 

ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35)

SELECT * FROM DEPOSIT

--Change the data type DECIMAL to INT in amount Column. 

ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

SELECT * FROM DEPOSIT

--Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSIT
DROP COLUMN CITY

SELECT * FROM DEPOSIT

--Rename Column ActNo to ANO.

SP_RENAME 'DEPOSIT.ACTNO' , 'ANO';

SELECT * FROM DEPOSIT

--Change name of table DEPOSIT to DEPOSIT_DETAIL.

SP_RENAME  'DEPOSIT' , 'DEPOSIT_DETAIL';

SELECT * FROM DEPOSIT_DETAIL


--PART-B--


--Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
SP_RENAME  'DEPOSIT_DETAIL.ADATE' , 'AOPENDATE' ;

SELECT * FROM DEPOSIT_DETAIL

--Delete Column AOPENDATE from the DEPOSIT_DETAIL table. 
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE;

SELECT * FROM DEPOSIT_DETAIL

--Rename Column CNAME to CustomerName.
SP_RENAME 'DEPOSIT_DETAIL.CNAME' , 'CUSTOMERNAME' ;

SELECT * FROM DEPOSIT_DETAIL

--Add Column country.
ALTER TABLE DEPOSIT_DETAIL
ADD COUNTRY VARCHAR(20)

SELECT * FROM DEPOSIT_DETAIL

--Part – C--

CREATE TABLE STUDENT_DETAIL
(
	ENTEROLMENT_NO VARCHAR(20),
	NAME VARCHAR(20),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
)
SELECT * FROM STUDENT_DETAIL

--Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20) NOT NULL,
	BACKLOG INT NULL;

SELECT * FROM STUDENT_DETAIL

--Add column department VARCHAR (20) Not Null. 
ALTER TABLE STUDENT_DETAIL
ADD DEPARTMENT VARCHAR(20)

SELECT * FROM STUDENT_DETAIL

--Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35)

SELECT * FROM STUDENT_DETAIL

--Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT

SELECT * FROM STUDENT_DETAIL

--Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY

SELECT * FROM STUDENT_DETAIL

--Rename Column Enrollment_No to ENO.
SP_RENAME 'STUDENT_DETAIL.ENTEROLMENT_NO' , 'ENO'

SELECT * FROM STUDENT_DETAIL

--Change name of table student_detail to STUDENT_MASTER.
SP_RENAME 'STUDENT_DETAIL' , 'STUDENT_MASTER';

SELECT * FROM STUDENT_MASTER


--DELETE, Truncate, Drop Operation 
-----------------------------------
--Part – A: 

-- deposit_detail table last query ma drop karelu che etle ahiya ekoi query work nahi kare..


--Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.  
DELETE 
FROM DEPOSIT_DETAIL
WHERE AMOUNT<=4000

SELECT * FROM DEPOSIT_DETAIL

--Delete all the accounts CHANDI BRANCH. 
DELETE 
FROM DEPOSIT_DETAIL
WHERE BNAME = 'CHANDI'

SELECT * FROM DEPOSIT_DETAIL

--Delete all the accounts having account number (ANO) is greater than 102 and less than 105.
DELETE 
FROM DEPOSIT_DETAIL
WHERE ANO>102 AND ANO<105

SELECT * FROM DEPOSIT_DETAIL

 --Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’ 
DELETE 
FROM DEPOSIT_DETAIL
WHERE BNAME = 'AJNI' OR BNAME = 'POWAI'

SELECT * FROM DEPOSIT_DETAIL

 --Delete all the accounts whose account number is NULL. 
DELETE 
FROM DEPOSIT_DETAIL
WHERE ANO = NULL

SELECT * FROM DEPOSIT_DETAIL

 --Delete all the remaining records using Delete command.
 DELETE
 FROM DEPOSIT_DETAIL

 SELECT * FROM DEPOSIT_DETAIL
 
 --Delete all the records of Deposit_Detail table. (Use Truncate) 
 TRUNCATE TABLE DEPOSIT_DETAIL ;

 --Remove Deposit_Detail table. (Use Drop) 
 DROP TABLE DEPOSIT_DETAIL



 
 ---PART-B---


 CREATE TABLE EMPLOYE_MASTER(
	EMPNO INT,
	EMPNAME varchar(25),
	JOININGDATE DATETIME,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(20)
);

INSERT INTO EMPLOYE_MASTER
(EMPNO,EMPNAME,JOININGDATE,SALARY,CITY) VALUES
(101,'KEYUR','2005-1-02',12000.00,'RAJKOT'),
(102,'HARDIK','2015-2-04' ,14000.00,'AHMEDABAD'),
(103,'KAJAL','2014-3-06',15000.00 ,'BARODA'),
(104,'BHOOMI','2023-6-05',12500.00,'AHMEDABAD'),
(105,'HARMIT','2015-2-04',14000.00,'RAJKOT'),
(106,'MITESH','2025-9-01',5000.00,'JAMNAGAR'),
(107,'MEERA',Null, 7000.00,'MORBI'),
(108,'KISHAN', '2006-2-03' ,10000.00 ,NULL);

SELECT * FROM EMPLOYE_MASTER

--Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.  
DELETE
FROM EMPLOYE_MASTER
WHERE SALARY >= 14000

SELECT * FROM EMPLOYE_MASTER
--Delete all the Employees who belongs to ‘RAJKOT’ city. 
DELETE
FROM EMPLOYE_MASTER
WHERE CITY = 'RAJKOT' 

SELECT * FROM EMPLOYE_MASTER

--Delete all the Employees who joined after 1-1-2007.
DELETE
FROM EMPLOYE_MASTER
WHERE  JOININGDATE > '1-1-2007'

SELECT * FROM EMPLOYE_MASTER

--Delete the records of Employees whose joining date is null and Name is not null. 
DELETE
FROM EMPLOYE_MASTER
WHERE JOININGDATE IS NULL AND EMPNAME IS NOT NULL

SELECT * FROM EMPLOYE_MASTER

--Delete the records of Employees whose salary is 50% of 20000. 
DELETE
FROM EMPLOYE_MASTER
WHERE SALARY =10000

SELECT * FROM EMPLOYE_MASTER

--Delete the records of Employees whose City Name is not empty.
 DELETE
 FROM EMPLOYE_MASTER

 SELECT * FROM EMPLOYE_MASTER

--Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYE_MASTER ;

--Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYE_MASTER