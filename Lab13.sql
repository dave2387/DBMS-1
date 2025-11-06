USE CSE_3B_386

SELECT * FROM AUTHOR
SELECT * FROM PUBLISHER
SELECT * FROM BOOK

---------Part – A:----------- 

--1. List all books with their authors. 
SELECT BOOK.TITLE , AUTHOR.AUTHORNAME
FROM BOOK JOIN AUTHOR
ON BOOK.AUTHORID = AUTHOR.AUTHORID

--2. List all books with their publishers. 
SELECT BOOK.TITLE , PUBLISHER.PUBLISHERNAME
FROM BOOK JOIN PUBLISHER
ON BOOK.PUBLISHERID = PUBLISHER.PUBLISHERID

--3. List all books with their authors and publishers.


--4. List all books published after 2010 with their authors and publisher and price. 

--5. List all authors and the number of books they have written. 

--6. List all publishers and the total price of books they have published. 

--7. List authors who have not written any books. 

--8. Display total number of Books and Average Price of every Author. 

--9. lists each publisher along with the total number of books they have published, sorted from highest to 
--lowest. 

--10. Display number of books published each year. 
 
----------------Part – B:------------------- 

--1. List the publishers whose total book prices exceed 500, ordered by the total price. 

--2. List most expensive book for each author, sort it with the highest price. 

