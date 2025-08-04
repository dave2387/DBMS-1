USE CSE_3B_386

CREATE TABLE STUDENT
(
	StuID INT ,
	FirstName VARCHAR(25) ,
	LastName VARCHAR(25) ,
	Website VARCHAR(50) ,
	City VARCHAR(25) ,
	Address VARCHAR(100) 
)

INSERT INTO STUDENT VALUES
(1011,'Keyur','Patel','echonthenet.com','Rajkot','A-303 ''Vasant Kunj'', Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad', '"Ram Krupa", Raiya Road' ),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home", Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building')

SELECT * FROM STUDENT
TRUNCATE TABLE STUDENT

----------Part – A----------

-- Display the name of students whose name starts with ‘k’. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE'K%'

-- Display the name of students whose name consists of five characters. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE'_____'

-- Retrieve the first name & last name of students whose city name ends with ‘a’ & contains six characters. 
SELECT FIRSTNAME,LASTNAME 
FROM STUDENT
WHERE CITY LIKE'%A'AND CITY LIKE'______'

-- Display all the students whose last name ends with ‘tel’. 
SELECT LASTNAME 
FROM STUDENT
WHERE LASTNAME LIKE'%TEL'

-- Display all the students whose first name starts with ‘ha’ & ends with‘t’. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE'HA%'AND FIRSTNAME LIKE'%T'

-- Display all the students whose first name starts with ‘k’ and third character is ‘y’. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE'K%' AND FIRSTNAME LIKE'__Y%'

--Display the name of students having no website and name consists of five characters. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE WEBSITE LIKE'NULL' AND FIRSTNAME LIKE '_____'

--Display all the students whose last name consist of ‘jer’.   
SELECT FIRSTNAME
FROM STUDENT
WHERE LASTNAME LIKE'%JER%'

--Display all the students whose city name starts with either ‘r’ or ‘b’. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE CITY LIKE 'R%' OR CITY LIKE 'B%'

-- Display all the name students having websites.
SELECT FIRSTNAME 
FROM STUDENT
WHERE WEBSITE NOT LIKE'NULL'

-- Display all the students whose name starts from alphabet A to H.
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE '[A-H]%'

-- Display all the students whose name’s second character is vowel. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE '_[AEIOU]%'

-- Display the name of students having no website and name consists of minimum five characters.
SELECT FIRSTNAME 
FROM STUDENT
WHERE WEBSITE LIKE 'NULL' AND FIRSTNAME LIKE'_____'

-- Display all the students whose last name starts with ‘Pat’. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE LASTNAME LIKE'PAT%'

-- Display all the students whose city name does not starts with ‘b’. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE CITY NOT LIKE'B%'

-- Display all the students whose student ID ends with digit.
SELECT FIRSTNAME 
FROM STUDENT
WHERE STUID LIKE'%[0-9]'

-- Display all the students whose address does not contain any digit.
SELECT FIRSTNAME 
FROM STUDENT
WHERE ADDRESS NOT LIKE'%[0-9]%'


-- Find students whose first name starts with 'B', last name ends with 'A', and their website contains either 
--'math' or 'science'. Ensure that their city does not start with 'B'.
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE'B%' AND LASTNAME LIKE '%A' AND WEBSITE LIKE'%MATH%' OR WEBSITE LIKE'%SCIENCE%'  AND CITY NOT LIKE 'B%'

--Retrieve students who have 'Shah' in their last name and whose city ends with 'd'. Additionally, their 
--website should be either null or contain 'com'. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE LASTNAME LIKE '%SHAH%' AND CITY LIKE'%D'AND WEBSITE LIKE'NULL' OR WEBSITE LIKE'%COM%'

-- Select students whose first and second character is a vowel. Their city should start with 'R' and they must 
--have a website containing '.com'. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE '[AEIOU][AEIOU]%' AND CITY LIKE 'R%' AND WEBSITE LIKE '%.COM%'

----------Part – B----------

--1. Display all the students whose name’s second character is vowel and of and start with H. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE 'H[AEIOU]%'

--2. Display all the students whose last name does not ends with ‘a’. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME NOT LIKE'%A'

--3. Display all the students whose first name starts with consonant.
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME NOT LIKE'[AEIOU]%'

--4. Retrieve student details whose first name starts with 'K', last name ends with 'tel', and either their 
--website contains 'tech' or they live in a city starting with 'R'. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE FIRSTNAME LIKE 'K%' AND LASTNAME LIKE '%TEL' AND WEBSITE LIKE '%TECH%' OR CITY LIKE'R%'


--5. Retrieve students whose address contains a hyphen '-' and whose city starts with either 'R' or 'B'. They 
--must have a website that ends with '.com' and their first name should not start with 'A'. 
SELECT FIRSTNAME 
FROM STUDENT
WHERE ADDRESS LIKE'%-%'AND CITY LIKE 'R%' OR CITY LIKE 'R%'AND WEBSITE LIKE'%.COM' AND FIRSTNAME NOT LIKE'A%'

-----------Part – C-----------

--1. Display all the students whose address contains single quote or double quote. 
SELECT * 
FROM STUDENT
WHERE ADDRESS LIKE '%[''"]%'

--2. Find students whose city does not contain the letter 'S' and their address contains either single or double 
--quotes. Their last name should start with 'P' and they must have a website that contains 'on'. 
SELECT * 
FROM STUDENT
WHERE CITY NOT LIKE '%S%' AND ADDRESS LIKE '%[''"]%' AND LASTNAME LIKE 'P%' AND WEBSITE LIKE'%ON%'