USE CSE_3B_386

CREATE TABLE STUDENT_DATA(
	RNO INT,
	NAME VARCHAR(50),
	CITY VARCHAR(50),
	DID INT
);

INSERT INTO STUDENT_DATA VALUES
(101,'RAJU','RAJKOT',10),
(102,'AMIT','AHMEDABAD',20),
(103,'SANJAY','BARODA',40),
(104,'NEHA','RAJKOT',20),
(105,'MEERA','AHMEDAABAD',30),
(106,'MAHESH','BARODA',10);

SELECT * FROM STUDENT_DATA

CREATE TABLE DEPARTMENT
(
	DID INT,
	DNAME VARCHAR(50)
);

INSERT INTO DEPARTMENT VALUES
(10,'COMPUTER'),
(20,'ELECTIRCAL'),
(30,'MECHENICAL'),
(40,'CIVIL');

SELECT * FROM DEPARTMENT

CREATE TABLE ACEDEMIC
(
	RNO INT ,
	SPI DECIMAL(4,2),
	BKLOG INT
);

INSERT INTO ACEDEMIC VALUES
(101,8.8,0),
(102,9.2,2),
(103,7.6,1),
(104,8.2,4),
(105,7.0,2),
(106,8.9,3);

SELECT * FROM ACEDEMIC 
----------Part – A:------------

--1. Display details of students who are from computer department. 
SELECT NAME,RNO,CITY 
FROM STUDENT_DATA
WHERE DID = (SELECT DID FROM DEPARTMENT WHERE DNAME = 'COMPUTER' )

--2. Displays name of students whose SPI is more than 8. 
SELECT NAME 
FROM STUDENT_DATA
WHERE RNO IN (SELECT RNO FROM ACEDEMIC WHERE SPI>8.8)

--3. Display details of students of computer department who belongs to Rajkot city.
SELECT RNO,NAME,CITY 
FROM STUDENT_DATA
WHERE CITY = 'RAJKOT' AND DID = (SELECT DID FROM DEPARTMENT WHERE DNAME = 'COMPUTER')

--4. Find total number of students of electrical department.
SELECT COUNT(RNO)
FROM STUDENT_DATA
WHERE DID =  (SELECT DID FROM DEPARTMENT WHERE DNAME = 'ELECTIRCAL' )

--5. Display name of student who is having maximum SPI. 
SELECT NAME 
FROM STUDENT_DATA
WHERE RNO = (SELECT RNO FROM ACEDEMIC WHERE SPI = (SELECT MAX(SPI) FROM ACEDEMIC))

--6. Display details of students having more than 1 backlog.
SELECT RNO,NAME,CITY
FROM STUDENT_DATA
WHERE RNO IN(SELECT RNO FROM ACEDEMIC WHERE BKLOG>1)

--Part – B: 

--1. Display name of students who are either from computer department or from mechanical department.
SELECT NAME 
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME='COMPUTER' OR DNAME='MECHENICAL')

--2. Display name of students who are in same department as 102 studying in. 
SELECT NAME 
FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM STUDENT_DATA WHERE RNO = 102 )

--Part – C: 

--1. Display name of students whose SPI is more than 9 and who is from electrical department.
SELECT NAME 
FROM STUDENT_DATA
WHERE RNO = (SELECT RNO FROM ACEDEMIC WHERE SPI>9) AND DID=(SELECT DID FROM DEPARTMENT WHERE DNAME = 'ELECTIRCAL')

--2. Display name of student who is having second highest SPI. 
SELECT NAME 
FROM STUDENT_DATA
WHERE RNO = (SELECT RNO FROM ACEDEMIC WHERE SPI = ( SELECT MAX(SPI) FROM ACEDEMIC WHERE SPI <(SELECT MAX(SPI) FROM ACEDEMIC )))

--3. Display city names whose students SPI is 9.2 

--4. Find the names of students who have more than the average number of backlogs across all students. 

--5. Display the names of students who are in the same department as the student with the highest SPI. 




------------------------------------------------------ SET Operators ----------------------------------------------------
---------------------------------------------------------Part – A:---------------------------------------------------- 
CREATE TABLE COMPUTER (
ROLLNO INT,
NAME VARCHAR(50)
);

INSERT INTO COMPUTER VALUES 
(101,'AJAY'),
(109,'HARESH'),
(115,'MANISH')

SELECT * FROM COMPUTER

CREATE TABLE ELECTRICAL (
ROLLNO INT,
NAME VARCHAR(50) 
);

INSERT INTO ELECTRICAL VALUES
(105,'AJAY'),
(107,'MAHESH'),
(115,'MANISH')
SELECT * FROM ELECTRICAL



--  1. Display name of students who is either in Computer or in Electrical. 
SELECT Name FROM COMPUTER
UNION
SELECT Name FROM ELECTRICAL;

-- 2. Students who are either in Computer or Electrical including duplicates
SELECT NAME FROM COMPUTER
UNION ALL 
SELECT NAME FROM ELECTRICAL

-- 3. Students who are in both Computer and Electrical
SELECT Name FROM COMPUTER
INTERSECT
SELECT Name FROM ELECTRICAL

-- 4. Students who are in Computer but not in Electrical
SELECT NAME FROM COMPUTER 
INTERSECT
SELECT NAME FROM ELECTRICAL

-- 5. Students who are in Electrical but not in Computer
SELECT * FROM COMPUTER 
EXCEPT
SELECT * FROM ELECTRICAL

-- 6. All details of students who are either in Computer or Electrical
SELECT * FROM COMPUTER
UNION ALL
SELECT * FROM ELECTRICAL

-- 7. All details of students who are in both Computer and Electrical
SELECT * FROM COMPUTER 
INTERSECT
SELECT * FROM ELECTRICAL


-------------------------------------------Part – B:---------------------------------------------------- 
CREATE TABLE EMP_DATA1
(
EID INT,
NAME VARCHAR(50),
);
INSERT INTO EMP_DATA1 VALUES
(1, 'AJAY'),
(9, 'HARESH'),
(5, 'MANISH')

SELECT * FROM EMP_DATA1


CREATE TABLE CUSTOMER1
(
CID INT,
NAME VARCHAR(50),
);

INSERT INTO CUSTOMER1 VALUES
(5, 'AJAY'),
(7, 'MAHESH'),
(5, 'MANISH')

SELECT * FROM CUSTOMER


--  1. Display name of persons who is either Employee or Customer. 
SELECT NAME FROM EMP_DATA1
UNION 
SELECT NAME FROM CUSTOMER1

--  2. Display name of persons who is either Employee or Customer including duplicate data. 
SELECT NAME FROM EMP_DATA1
UNION ALL
SELECT NAME FROM CUSTOMER1

--  3. Display name of persons who is both Employee as well as Customer.
SELECT NAME FROM EMP_DATA1
INTERSECT
SELECT NAME FROM CUSTOMER1

--  4. Display name of persons who are Employee but not Customer.
SELECT NAME FROM EMP_DATA1
EXCEPT
SELECT NAME FROM CUSTOMER1

--  5. Display name of persons who are Customer but not Employee. 
SELECT NAME FROM CUSTOMER1
EXCEPT 
SELECT NAME FROM EMP_DATA1

-------------------------------------------Part – C:---------------------------------------------------- 
-- 1. Persons who are either Employee or Customer (no duplicates)
SELECT EID AS ID, NAME FROM EMP_DATA1
UNION
SELECT CID AS ID, NAME FROM CUSTOMER1;

-- 2. Persons who are either Employee or Customer (with duplicates)
SELECT EID AS ID, NAME FROM EMP_DATA1
UNION ALL
SELECT CID AS ID, NAME FROM CUSTOMER1;

-- 3. Persons who are both Employee and Customer
SELECT EID AS ID, NAME FROM EMP_DATA1
INTERSECT
SELECT CID AS ID, NAME FROM CUSTOMER1;

-- 4. Persons who are Employee but not Customer
SELECT EID AS ID, NAME FROM EMP_DATA1
EXCEPT
SELECT CID AS ID, NAME FROM CUSTOMER1;

-- 5. Persons who are Customer but not Employee
SELECT CID AS ID, NAME FROM CUSTOMER1
EXCEPT
SELECT EID AS ID, NAME FROM EMP_DATA1;