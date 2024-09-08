:::::::::::::::::::::::::::::::::::::::::::::CDAC SQL LECTURE:::::::::::::::::::::::::::::::::::::::::::::::::  

USERNAME: mysql -u root -p
password: *********

====================================(SHOW,CREATE,USE DATABASE)================================================
Show databases;

Create database database_name;

use database_name;

============================================(CREATE TABLE, CONSTRAINTS)=======================================
NOTE: PRIMARY KEY, NOT NULL, UNIQUE, AUTO_INCREMENT, CHECK THIS IS CONSTRAINTS

Create table table_name(
	column_name1 data_type(size) constraints_name(optional),
	column_name2 data_type(size),
	column_name3 data_type(size)
);

Create table table_name(
	column_name1 data_type(size),
	column_name2 data_type(size),
	column_name3 data_type(size),
	PRIMARY KEY (column_name1)

);
================================================(FOREIGN KEY)==============================================
CREATE TWO TABLE :
------------------

CREATE TABLE Person (
    person_id int primary key,
    last_name varchar(30),
    first_name varchar(30),
    age int(20)
);


CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    person_id int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (Person_id) REFERENCES Person(Person_id)
);

================================================(DESCRIBE TABLE)==============================================
Desc table_name;

================================================(SHOW TABLES)=================================================
Show tables;

=======================================(INSERT DATA INTO TABLE (4 TYPE))======================================
1) Insert into table_name(column_name1,column_name1)
	values('value1','value2');

2) Insert into table_name values('value1','value2');

3) Insert into table_name(column_name2,column_name1)
	values('value2','value1');

4) INSERT INTO table_name VALUES
	(value1,'value2','value3'),
	(value1,'value2','value3'),
	(value1,'value2','value3'),
	(value1,'value2','value3');

============================================(SHOW RECORDS)====================================================
Select * from table_name;

Select column_name1,column_name2 from table_name;

============================================(LIMIT RECORD SHOW)===============================================
select * from table_name limit record_number;

select * from table_name limit 1,5;

=================================(WHERE CONDITION USING SHOW RECORD)==========================================
select * from table_name where column_name='value';

select column_name from table_name where column_name='value';

select * from table_name where column_name != 'value';
select * from table_name where column_name > 'value';
select * from table_name where column_name <= 'value';
select * from table_name where column_name >= 'value';

==========================================(IS, IS NOT NULL CHECK)=============================================
select column_name from table_name where column_name IS NULL;
select column_name from table_name where column_name IS NOT NULL;

============================================(AND, OR, AND OR)=================================================
select * from table_name where column_name1='value1' AND column_name2='value2';
select * from table_name where column_name1='value1' OR column_name2='value2';
select * from table_name where column_name1='value1' AND ( column_name2='value2' OR column_name3='value3');

============================================(IN , NOT IN)=====================================================
Select * from table_name where column_name IN ('VALUE1','VALUE2');
Select * from table_name where column_name NOT IN ('VALUE1','VALUE2');

=============================================(BETWEEN)========================================================
Select * from table_name where column_name BETWEEN value1 AND value2; [6 AND 8]
Select * from table_name where column_name BETWEEN 'value1' AND 'value2'; [B AND J, INCLUDING B AND NOT J]
Select * from table_name where column_name BETWEEN 'YYYY/MM/DD' AND 'YYYY/MM/DD'; [INCLUDING BOTH DATES]

==============================================(NOT BETWEEN)===================================================
Select * from table_name where column_name NOT BETWEEN value1 AND value2; [6 AND 8]
Select * from table_name where column_name NOT BETWEEN 'value1' AND 'value2'; [B AND J, INCLUDING B AND NOT J]
Select * from table_name where column_name NOT BETWEEN 'YYYY/MM/DD' AND 'YYYY/MM/DD'; [INCLUDING BOTH DATES]

=====================================(LIKE OPERATOR PATTERN MATCH)============================================
select * from table_name where column_name LIKE 'pattern'; ['%a']
select * from table_name where column_name LIKE 'pattern'; ['a%']
select * from table_name where column_name LIKE 'pattern'; ['%a%']

=============================================(NOT LIKE OPERATOR)==============================================
select * from table_name where column_name NOT LIKE 'pattern'; ['%a']
select * from table_name where column_name NOT LIKE 'pattern'; ['a%']
select * from table_name where column_name NOT LIKE 'pattern'; ['%a%']

========================================(ORDER BY ASC. DESC)==================================================
Select * from table_name ORDER BY column_name ASC; [BY DEFAULT IS ASCENDING]
Select * from table_name ORDER BY column_name DESC; [DESENDING ORDER]

==============================================(ALIAS NAME)====================================================
Select column_name from table_name AS ALIAS_NAME;
Select column_name AS ALIAS_NAME from table_name;

===================================================================================================
Select column_name, column_name operator value from table_name; 
EXAMPLE : [Select name,cost,cost+100 AS "NEW COST" from table_name]

==========================================(DISTINCT KEYWORD)==================================================
Select DISTINCT column_name from table_name; [ONLY SHOW DIFFERENT VALUE / ONLY SHOW UNIQUE VALUE]

=============================================(ALTER TABLE)====================================================
ALTER TABLE : THIS COMMAND IS USED TO ADD/CHANGE/MODIFY/DROP EXISTING STRUCTURE OF THE TABLE.

ADD COLUMN:
-----------
1)ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE(SIZE);  [ONLY ADD ONE COLUMN]

2)ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE(SIZE), ADD COLUMN_NAME DATA_TYPE(SIZE); [MORE COLUMN ADD]

ADD COLUMN BY POSTION:
----------------------
1)ALTER TABLE TABLE_NAME ADD COLUMN COLUMN_NAME DATA_TYPE(SIZE) FIRST;		     [FIRST]

2)ALTER TABLE TABLE_NAME ADD COLUMN COLUMN_NAME DATA_TYPE(SIZE) AFTER COLUMN_NAME;  [AFTER]

3)ALTER TABLE TABLE_NAME ADD COLUMN COLUMN_NAME DATA_TYPE(SIZE);	           [BY DEFALUT LAST]

ADD COLUMN WITH CONSTRAINT:
---------------------------
1)ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE(SIZE) CONSTRAINTS_NAME;

2)ALTER TABLE TABLE_NAME ADD CONSTRAINTS CONSTRAINTS_NAME(column_name);
===================================================================================================

CHANGE COLUMN:
--------------
1) ALTER TABLE table_name CHANGE COLUMN old_column_name new_column_name data_type(SIZE);

2) ALTER TABLE table_name CHANGE COLUMN old_column_name1 new_column_name1 data_type(SIZE),CHANGE COLUMN old_column_name2 new_column_name2 data_type(SIZE);

CHANGE COLUMN WITH CONSTRAINTS:
-------------------------------
3) ALTER TABLE table_name CHANGE COLUMN old_column_name new_column_name new_data_type(SIZE)    constraints_name, ADD Constraints_name(column_name);
===================================================================================================

MODIFY COLUMN:
--------------
1) ALTER TABLE table_name MODIFY COLUMN column_name data_type(SIZE);
===================================================================================================

DROP COLUMN:
------------
1) ALTER TABLE table_name DROP COLUMN column_name;

REMOVE CONSTRAINTS:
------------------
1) ALTER TABLE table_name DROP constraints_name(column_name);
===================================================================================================
DROP TABLE table_name;
===================================================================================================
TRUNCATE TABLE table_name;
===================================================================================================
RENAME TABLE old_table_name to new_table_name;
===================================================================================================
ALTER DATABASE database_name;
SHOW CREATE DATABASE database_name;
SHOW CREATE TABLE table_name;
========================================(UPDATE COMMAND)======================================================
UPDATE RECORD IN TABLE :
------------------------
1) UPDATE table_name
	set column1=value1, column2=value2
	where some_column=some_value;

===============================================(DELETE COMMAND)===============================================
DELETE RECORD IN A TABLE :

1) DELETE FROM table_name where some_column=some_value;  [specific record delete]
2) DELETE * FROM table_name; 
3) DELETE column_name FROM table_name;   [we can not undo]

======================================(COPY OLD TABLE TO NEW TABLE)===========================================
 
1) CREATE TABLE new_table LIKE old_table;
DATA COPY: INSERT new_table select * from old_table;

==============================(WITH DIFFERENT DATABASE COPY OLD TABLE TO NEW TABLE)===========================

1) CREATE TABLE new_table LIKE old_database.old_table;
DATA COPY: INSERT new_table select * from old_database_name.old_table;

==============================================(AGGREGATE FUNCTIONS)===========================================
AGGREGATE FUNCTIONS : MIN,MAX,SUM,AVG,SQRT,ROUND,COUNT,UPPER AND LOWER,MID AND LENGTH,CONCAT,REVERSE,NOW,FORMAT.

1) Select MIN(column_name) from table_name;
   Select MIN(column_name) AS New_column from table_name;

2) Select MAX(column_name) from table_name;
3) Select SUM(column_name) from table_name;
4) Select AVG(column_name) from table_name;
5) Select SQRT(column_name) from table_name;
6) Select COUNT(column_name) from table_name;
7) Select UPPER(column_name) from table_name;
8) Select LOWER(column_name) from table_name;
9) Select MID(column_name) from table_name;
10) Select LENGTH(column_name) from table_name;
11) Select CONCAT(column_name) from table_name;
12) Select REVERSE(column_name) from table_name;
13) Select NOW(column_name) from table_name;
14) Select FORMAT(column_name) from table_name;

==========================================(GROUP BY IN SQL)===================================================
GROUP : USING FUNCTION(ORDER BY,MAX)

SELECT column_name1, MIN(column_name_s) from table_name GROUP BY column_name1;

==================================(HAVING CLAUSE IN SQL)======================================================
HAVING : HAVING CLAUSE IS USED WITH GROUP BY CLAUSE & FILTER THE GROUPS CREATED BY THE GROUP BY CLAUSE. 

SELECT column_name1, MIN(column_name_s) from table_name GROUP BY column_name1 HAVING MIN(column_name_s) > 25000; 

======================================(JOINS IN SQL)==========================================================
                                        
JOINS : A JOIN IS A MEANS FOR COMBINING FIELDS FROM TWO TABLES (OR MORE) BY USING VALUES COMMON TO EACH.

1)INNER JOIN : SELECT * FROM TABLE1 JOIN TABLE2 ON TABLE1.COLUMN1=TABLE2.COLUMN1;
2)LEFT JOIN : SELECT * FROM TABLE1 LEFT JOIN TABLE2 ON TABLE1.COLUMN1=TABLE2.COLUMN1;
3)RIGHT JOIN : SELECT * FROM TABLE1 RIGHT JOIN TABLE2 ON TABLE1.COLUMN1=TABLE2.COLUMN1;
4)SELF JOIN : SELECT A.COLUMN, B.COLUMN FROM TABLE1 A, TABLE1 B WHERE A.COMMON_FIELD=B.COMMON_FIELD;

======================================DCL(DATA CONTROL LANGUAGE)==============================================
                                    
1)GRANT
2)REVOKE

SELECT USER();
CREATE USER USER_NAME@LOCALHOST IDENTIFIED BY 'abc';
SHOW GRANTS FOR USER_NAME@LOCALHOST;
GRANT SELECT ON *.* TO USER_NAME@LOCALHOST;
GRANT INSERT ON DATABASE_NAME.TABLE_NAME TO 'USER_NAME'@LOCALHOST';
GRANT UPDATE(COLUMN_NAME) ON DATABASE_NAME.TABLE_NAME TO 'USER_NAME'@LOCALHOST';
SHOW GRANTS FOR 'USER_NAME'@LOCALHOST';

SYSTEM MYSQL -U USER_NEW -P
PASSWORD *********

SELECT USER();
REVOKE INSERT ON DATABASE_NAME.TABLE_NAME FROM 'USER_NAME'@LOCALHOST';
SHOW GRANTS FOR USER_NAME@LOCALHOST;
SHOW GRANTS FOR 'ROOT'@'LOCALHOST';
GRANT ALL PRIVILEGES ON *.* TO USER_NAME@LOCALHOST WITH GRANT OPTION;

drop user user_name;

====================================(VIEWS IN SQL SERVER)=====================================================
 
1) A VIEW IN SQL IS JUST A SAVED SQL QUERY.
2) A VIEW CAN ALSO BE CONSIDERED AS A VIRTUAL TABLE.
3) VIEWS CAN BE USED AS A MECHANISM TO IMPLEMENT ROW AND COLUMN LEVEL SECURITY.
(not show all table access, jo hum de uss ka data show ho only uss ke liye view create kr the hai)
4) TWO TABLE KE LIYE BII USE KR SKH THE HAI VIEWS.

. INSERT WITH VIEWS (AGR KUCH INSERT KRENGE TOH  MAIN TABLE MAI BII HOGA)
. UPDATE WITH VIEWS 
. DELETE WITH VIEWS 

*********************************************CREATE VIEWS SYNTAX********************************************** 

CREATE VIEW VIEW_NAME
as
SELECT * FROM TABLE_NAME;
 
SHOW FULL TABLES; [SHOW VIEW COMMAND]

EX: create view nname as select id,name,email from hockeyparticipants;

********************************************INSERT VALUES SYNTAX********************************************** 

INSERT INTO VIEW_NAME VALUES(VALUE1,'VALUE2','VALUE3',VALUE4,'VALUE5',VALUE6); 
(MAIN TABLE MAI BII INSERT HOGA)

EX : insert into nname values(5,'ADARSH','ADARSH@GMAIL.COM');

SELECT * FROM VIEW_NAME;
********************************************UPDATE VALUES SYNTAX********************************************** 

UPDATE VIEW_NAME SET COLUMN_NAME='VALUE' WHERE COLUMN_NAME=VALUE; (MAIN TABLE MAI BII INSERT HOGA)

EX: update nname set name="KRISHN KUMAR",email="KRISHNA@GMAIL.COM" WHERE ID=4;

SELECT * FROM VIEW_NAME;
********************************************DELETE VALUES SYNTAX********************************************** 

DELETE FROM VIEW_NAME WHERE COLUMN_NAME=VALUE;     (MAIN TABLE MAI BII INSERT HOGA)

EX : DELETE FROM NNAME WHERE ID=5;

SELECT * FROM VIEW_NAME;
SHOW FULL TABLES;

===========Relational Algebra (UNION, UNION ALL, INTERSECT, EXCEPT, MINUS USE IN ORACLE DATABASE)=============
              
CREATE DATABASE :
CREATE DATABASE SPORTS;
-----------------------------------------------------
USE SPORTS;
-----------------------------------------------------
CREATE TABLE 1:
CREATE TABLE FOOTBALLPARTICIPANTS 
(
ID VARCHAR(20) NOT NULL,
NAME VARCHAR(30),
EMAIL VARCHAR(40)
);
-----------------------------------------------------
CREATE TABLE 2: 
CREATE TABLE HOCKEYPARTICIPANTS 
(
ID VARCHAR(20) NOT NULL,
NAME VARCHAR(30),
EMAIL VARCHAR(40)
);
-----------------------------------------------------
SHOW TABLES;
-----------------------------------------------------
INSERT VALUES IN TABLE :
INSERT INTO FOOTBALLPARTICIPANTS VALUES
(1,'TUSHAR KUMAR','TUSHAR@GMAIL.COM'),
(2,'KESHAV SINGH','KESHAV@GMAIL.COM'),
(3,'SANSKAR MANGAL','SANSKAR@GMAIL.COM'),
(4,'PIYUSH KUMAR','PIYUSH@GMAIL.COM');
-----------------------------------------------------
INSERT VALUES IN TABLE :
INSERT INTO HOCKEYPARTICIPANTS VALUES
(1,'ANUSHKA SINGH','ANUSHKA@GMAIL.COM'),
(2,'ROHIT GUPTA','ROHIT@GMAIL.COM'),
(3,'MANISH KUMAR','MANISH@GMAIL.COM'),
(4,'PIYUSH KUMAR','PIYUSH@GMAIL.COM');

SELECT * FROM FOOTBALLPARTICIPANTS;
SELECT * FROM HOCKEYPARTICIPANTS;
-----------------------------------------------------

UNION -> ALL COMMAN DATA ARE SHOW FROM TWO TABLES, DUPLICATE DATA NOT SHOW, TWO TABLES ARE SAME COLUMN NAME AND DATA TYPE SAME.(duplicate value show only one)

SYNTAX: 

SELECT * FROM FOOTBALLPARTICIPANTS
UNION
SELECT * FROM HOCKEYPARTICIPANTS;
-----------------------------------------------------
UNION ALL -> ALL DATA SHOW FROM TWO TABLES,ALLOW DUPLICATE RECORD ARE SHOW AND SORTING NOT ALLOWED, TWO TABLES ARE SAME COLUMN NAME AND DATA TYPE SAME.
(duplicate value show)

SYNTAX: 

SELECT * FROM FOOTBALLPARTICIPANTS
UNION ALL
SELECT * FROM HOCKEYPARTICIPANTS; 
-----------------------------------------------------
INTERSECT -> ONLY SHOW DUPLICATE RECORD FROM TWO TABLES,TWO TABLES ARE SAME COLUMN NAME AND DATA TYPE SAME.

SYNTAX: 
SELECT NAME FROM FOOTBALLPARTICIPANTS WHERE NAME IN (SELECT NAME FROM HOCKEYPARTICIPANTS); 


SELECT * FROM HOCKEYPARTICIPANTS
intersection
SELECT * FROM FOOTBALLPARTICIPANTS;
-----------------------------------------------------
EXCEPT -> LEFT TABLE ALL RECORDS ARE SHOW, DUPLICATE RECORD ARE NOT SHOW.

SYNTAX: 
SELECT NAME FROM FOOTBALLPARTICIPANTS WHERE NAME NOT IN(SELECT NAME FROM HOCKEYPARTICIPANTS);


SELECT * FROM FOOTBALLPARTICIPANTS
EXCEPT
SELECT * FROM HOCKEYPARTICIPANTS;

==========================================(FUNCTION IN SQL SERVER)============================================

1)A function must have a name and a function name can never start with a special character such as @,$,# and so on.

2)Function only work with select statement.

3)Function can be used anywhere in SQL, like AVG,COUNT,SUM,MIN,DATE and so on with select statement.

4)Function compile every time.

5)Function must return a value or result(table,dataset).

6)Functions only work with input parameters;

7)Try and Catch statement are not used in functions.

FUNCTION TYPES:
1)USER DEFINE (CREATE BY A USER)
i)Scalar function
ii)inline table valued functions
iii)multi-statement table valued functions

2)SYSTEM DEFINE (BUILT IN FUNCTIONS)

SCALAR FUNCTION :
1)SQL SERVER SCALAR FUNCTION TAKES ONE OR MORE PARAMETERS AND RETURNS A SINGLE(SCALAR) VALUE.
--------------------------------------------------------------------------------------------------------------
IMPORTANT::STEP 1 USING FUNCTION CREATE :

SET GLOBAL log_bin_trust_function_creators=1;
--------------------------------------------------------------------------------------------------------------

Delimiter /

CREATE FUNCTION countAuthor() RETURNS INT
BEGIN
Return(select count(author) from books_data);
END /


Delimiter;

SELECT countAuthor();
set @result=(SELECT countAuthor());
select @result;

-----------------------------------------------------

Delimiter #

CREATE FUNCTION countAuthor_particular() returns int
BEGIN
RETURN(SELECT count(*) from books_data where author="Robert louis");
END #

Delimiter ;

select countAuthor_particular();
-----------------------------------------------------
Delimiter $

CREATE FUNCTION displayAuthorByCategory(cname varchar(20)) returns int
BEGIN
RETURN(SELECT count(*) from books_data where category=cname);
END $

Delimiter /

select displayAuthorByCategory('Fiction');
select displayAuthorByCategory('Arts');
select displayAuthorByCategory('Education'); 

-----------------------------------------------------

Delimiter #

CREATE FUNCTION getAuthorCategory(aname varchar(20)) returns varchar(20)
BEGIN
RETURN(SELECT category from books_data where category=aname);
END #

Delimiter /

select getAuthorCategory('Robert louis');
select 'The category of Robert Louis is ' as ,getAuthorCategory('Robert Louis') as 'category'; 
--------------------------------------------------------------------------------------------------------------

select Routine_name, routine_type from information_schema.routines where routine_type="function" AND routine_sche
ma="database";

--------------------------------------------------------------------------------------------------------------
drop function function_name;

--------------------------------------------------------------------------------------------------------------
============================================(STORE PROCEDURE)=================================================

Delimiter /
CREATE PROCEDURE getcategoryinfo()
Begin
	select * from books_data;
End /
Delimiter ;

call getcategoryinfo;
--------------------------------------------------------------------------------------------------------------
drop procedure procedure_name; (DELETE PROCEDURE COMMAND)

drop proc procedure_name;
--------------------------------------------------------------------------------------------------------------
Delimiter /
CREATE PROCEDURE getcategoryinfo()
Begin
	select title,author from books_data;
End /
Delimiter ;

call getcategoryinfo;
--------------------------------------------------------------------------------------------------------------
Delimiter /
CREATE PROCEDURE getcategoryinfoByAuthor(cat varchar(20))
Begin
	select * from books_data where category=cat;
End /
Delimiter ;

call getcategoryinfoByAuthor('Education');
--------------------------------------------------------------------------------------------------------------
Delimiter /
CREATE PROCEDURE getcategoryinfoByAuthoravailable(cat varchar(20), sts varchar(20))
Begin
	select * from books_data where category=cat AND status=sts;
End /
Delimiter ;

call getcategoryinfoByAuthoravailable('Education','available');
--------------------------------------------------------------------------------------------------------------

Delimiter /
CREATE PROCEDURE GETCATEGORYNAMESTATUS(IN B_ID INT(10), OUT AUTHOR_NAME VARCHAR(20), OUT O_STATUS VARCHAR(10)
BEGIN
	SELECT CATEGORY,STATUS INTO AUTHOR_NAME,O_STATUS FROM BOOKS_DATA WHERE BID=B_ID;

END /

DELIMITER ;

CALL GETCATEGORYNAMESTATUS(50,@AUTNAME,@AUTSTATUS);
SELECT @AUTNAME,@AUTSTATUS;
SELECT @AUTNAME;
-----------------------------------------------------
UPDATE USING PROCEDURE
----------------------

DELIMITER /
CREATE PROCEDURE UPDATECATEGORY(IN B_ID INT(10), IN CAT VARCHAR(30))
BEGIN
UPDATE BOOKS_DATA SET CATEGORY=CAT WHERE BID=B_ID;

SELECT CONCAT('CATEGORY FOR',B_ID,'IS CHANGED NOW TO ',CAT) AS CONFIRMATION;
END /

DELIMITER ;

CALL UPDATECATEGORY(62,'EDUCATION');
--------------------------------------------------------------------------------------------------------------
============================================(WHILE DO PROCEDURE)==============================================
WHILE DO - 1,2,3,4,5,6,7,8,9,10

Delimiter /
Create procedure printnumbers()
Begin
	declare a int;
	declare strng varchar(30);
	set a=1;
	set strng='';
	While(a<=10)do
		set strng=concat(strng , a, ',');
		set a=a+1;
	End While;
	select strng;
End /
Delimiter ;

call printnumbers;
--------------------------------------------------------------------------------------------------------------
Delimiter ^
Create procedure printnum()
Begin
	declare strng varchar(50) default '';
	declare b int default 0;
	Repeat
		set strng = concat(strng, b ,',');
		set b=b+1;
		until b=10
	END Repeat;
	select strng;
End ^
Delimiter ;

call printnum;

--------------------------------------------------------------------------------------------------------------
=========================================(LOOP IF ELSE CODITION)==============================================
Delimiter /
create procedure checkloop()
Begin
	declare a int(10) default 0;
	declare strng varchar(100) default '';

printevennum: LOOP
IF
	a=20 THEN LEAVE printevennum;
END IF;

set a=a+1;
	IF mod(a,2)=0 THEN
		SET strng=concat(strng, a ,' , ');
	ELSE
		ITERATE printevennum;
	END IF;
END LOOP;
select strng;
End /

Delimiter ;

call checkloop; -> call loop

=============================================(INOUT VARIABLE)=================================================

SET @aa = 'Sanskar';
Delimiter /
create procedure greetings(INOUT aa varchar(100))
Begin
	set aa= concat(aa, 'How are you?');
End /
Delimiter ;

call greetings(@aa);   == CALLING FUNCTION

========================================(CURSOR IN SQL SERVER)================================================

Delimiter $$
create procedure cur_sistec()
Begin
	declare c_name varchar(20);
	declare c_address varchar(20);
	declare c_finished integer default 0;
	declare c1 cursor for select name,address from sistec;
	declare continue handler for NOT FOUND set c_finished=1;
	open c1;
	get_emp: LOOP
	 fetch c1 into c_name, c_address;
	 if c_finished=1 then
		leave get_emp;
	 end if;
	 select concat(c_name,' ', c_address);
	END LOOP get_emp;
	close c1;
end $$
Delimiter ;

call cur_sistec();

mysql> call cur_sistec();
+-------------------------------+
| concat(c_name,' ', c_address) |
+-------------------------------+
| sanskar morena                |
+-------------------------------+
1 row in set (0.01 sec)

+-------------------------------+
| concat(c_name,' ', c_address) |
+-------------------------------+
| adarsh bhopal                 |
+-------------------------------+
1 row in set (0.02 sec)

+-------------------------------+
| concat(c_name,' ', c_address) |
+-------------------------------+
| aman gwalior                  |
+-------------------------------+
1 row in set (0.02 sec)

+-------------------------------+
| concat(c_name,' ', c_address) |
+-------------------------------+
| udit pune                     |
+-------------------------------+
1 row in set (0.02 sec)

drop procedure cur_sistec;

-----------------------------------------------------


create database cursor_demo;

use cursor_demo;

CREATE TABLE customer (      
  id int PRIMARY KEY,      
  c_name nvarchar(45) NOT NULL,      
  email nvarchar(45) NOT NULL,      
  city nvarchar(25) NOT NULL      
);  

INSERT INTO customer (id, c_name, email, city)       
VALUES (1,'Steffen', 'stephen@.com', 'Texas'),       
(2, 'Joseph', 'Joseph@.com', 'Alaska'),       
(3, 'Peter', 'Peter@.com', 'California'),    
(4,'Donald', 'donald@.com', 'New York'),       
(5, 'Kevin', 'kevin@.com', 'Florida'),  
(6, 'Marielia', 'Marielia@.com', 'Arizona'),    
(7,'Antonio', 'Antonio@.com', 'New York'),       
(8, 'Diego', 'Diego@ .com', 'California');

select * from customer;

--Declare the variables for holding data.  
DECLARE @id INT, @c_name NVARCHAR(50), @city NVARCHAR(50)  
   
--Declare and set counter.  
DECLARE @Counter INT  
SET @Counter = 1  
   
--Declare a cursor  
DECLARE PrintCustomers CURSOR  
FOR  
SELECT id, c_name, city FROM customer  
  
--Open cursor  
OPEN PrintCustomers  
   
--Fetch the record into the variables.  
FETCH NEXT FROM PrintCustomers INTO  
@id, @c_name, @city  
  
--LOOP UNTIL RECORDS ARE AVAILABLE.  
WHILE @@FETCH_STATUS = 0  
    BEGIN  
        IF @Counter = 1  
        BEGIN  
            PRINT 'id' + CHAR(9) + 'c_name' + CHAR(9) + CHAR(9) + 'city'  
            PRINT '--------------------------'  
        END  
   
        --Print the current record  
        PRINT CAST(@id AS NVARCHAR(10)) + CHAR(9) + @c_name + CHAR(9) + CHAR(9) + @city  
      
        --Increment the counter variable  
        SET @Counter = @Counter + 1  
   
        --Fetch the next record into the variables.  
        FETCH NEXT FROM PrintCustomers INTO  
        @id, @c_name, @city  
    END  
   
--Close the cursor  
CLOSE PrintCustomers  
   
--Deallocate the cursor  
DEALLOCATE PrintCustomers  

--------------------------------------------------------------------------------------------------------------
WITHOUT CURSOR VARIABLE :

select * from table_name;

DELIMITER //
mysql> CREATE PROCEDURE Data_emp()
    -> BEGIN
    ->     Declare ID varchar(5);
    ->     Declare cur1 CURSOR FOR  SELECT id FROM sistec;
    ->     SELECT *  FROM sistec;
    ->     OPEN cur1;
    ->     FETCH cur1 INTO ID;
    ->     CLOSE cur1;
    -> END //

Delimiter ;

--------------------------------------------------------------------------------------------------------------

=============================================(TRIGGER IN SQL)=================================================
SYNTAX:
-------

DELIMITER /
CREATE TRIGGER trigger_name trigger_time trigger_event
ON table_name
FOR EACH ROW
BEGIN
	//logics and statements
END /
Delimiter ;

**trigger_time -> BEFORE , AFTER
**trigger_event -> INSERT, UPDATE, DELETE

---------------------------------
Create database mysql_trigger;

create table users(
	id int,
	name varchar(50),
	email varchar(50),
	phone varchar(15),
	status int default 1,
	primary key (id)
);

INSERT INTO users values 
	(1,'vijay kumar','vijay@gmail.com',1234567897,1),
	(2,'sanjay kumar','sanjay@gmail.com',5698475625,1),
	(3,'ashish kumar','ashish@gmail.com',9854756548,1),
	(4,'keshav kumar','keshav@gmail.com',8457898565,1);

duplicate table create and store tigger event
---------------------------------------------

create table user_logs like users;

Delimiter /
CREATE TRIGGER before_users_delete BEFORE DELETE
ON USERS FOR EACH ROW
BEGIN
	INSERT INTO USER_LOGS (id,name,email,phone,status) VALUES (old.id,old.name,old.email,old.phone,old.status);

END /

Delimiter ;


mysql> select * from users;
+----+--------------+------------------+------------+--------+
| id | name         | email            | phone      | status |
+----+--------------+------------------+------------+--------+
|  1 | vijay kumar  | vijay@gmail.com  | 1234567897 |      1 |
|  2 | sanjay kumar | sanjay@gmail.com | 5698475625 |      1 |
|  3 | ashish kumar | ashish@gmail.com | 9854756548 |      1 |
+----+--------------+------------------+------------+--------+
3 rows in set (0.00 sec)

mysql> select * from user_logs;
+----+--------------+------------------+------------+--------+
| id | name         | email            | phone      | status |
+----+--------------+------------------+------------+--------+
|  4 | keshav kumar | keshav@gmail.com | 8457898565 |      1 |
+----+--------------+------------------+------------+--------+
1 row in set (0.00 sec)

 
---------------------------------------(TRIGGER AFTER INSERT)-------------------------------------------------

CREATE TABLE PRODUCTS(
PID INT,
PNAME VARCHAR(20),
PQTY INT,
PPRICE INT
);

CREATE TABLE PRODUCTS_BACKUP(
PID INT,
PNAME VARCHAR(20),
PQTY INT,
PPRICE INT,
AUDIT_ACTION VARCHAR(20),
ACTION_TIME DATE
);


DELIMITER /
CREATE TRIGGER WHEN_INSERT_VALUES AFTER INSERT ON PRODUCTS FOR EACH ROW
BEGIN
	INSERT INTO PRODUCTS_BACKUP VALUES(NEW.PID,NEW.PNAME,NEW.PQTY,NEW.PPRICE,'INSERT',CURRENT_TIMESTAMP());

END /

DELIMITER ;

INSERT INTO PRODUCTS VALUES(1,'NOKIA',20,15000);

---------------------------------------------(BEFORE - INSERT)------------------------------------------------

DELIMITER /
CREATE TRIGGER WHEN_INSERT_VALUES BEFORE INSERT ON PRODUCTS FOR EACH ROW
BEGIN
	INSERT INTO PRODUCTS_BACKUP VALUES(NEW.PID,NEW.PNAME,NEW.PQTY,NEW.PPRICE,'INSERT',CURRENT_TIMESTAMP());

END /

DELIMITER ;

INSERT INTO PRODUCTS VALUES(1,'NOKIA',20,15000);

-----------------------------------------------(AFTER - UPDATE)-----------------------------------------------


DELIMITER /
CREATE TRIGGER WHEN_UPDATE_VALUES AFTER UPDATE ON PRODUCTS FOR EACH ROW
BEGIN
	
	INSERT INTO PRODUCTS_BACKUP VALUES(OLD.PID,OLD.PNAME,OLD.PQTY,OLD.PPRICE,'UPDATE OLD',CURRENT_TIMESTAMP());

	INSERT INTO PRODUCTS_BACKUP VALUES(NEW.PID,NEW.PNAME,NEW.PQTY,NEW.PPRICE,'UPDATE VALUE',CURRENT_TIMESTAMP());



END /

DELIMITER ;

UPDATE PRODUCTS SET PNAME='QMOBILE', PQTY=15, PPRICE=14000 WHERE PID=1;

-----------------------------------------------(BEFORE - UPDATE)----------------------------------------------


DELIMITER /
CREATE TRIGGER WHEN_UPDATE_VALUES BEFORE UPDATE ON PRODUCTS FOR EACH ROW
BEGIN
	
	INSERT INTO PRODUCTS_BACKUP VALUES(OLD.PID,OLD.PNAME,OLD.PQTY,OLD.PPRICE,'UPDATE OLD',CURRENT_TIMESTAMP());

	INSERT INTO PRODUCTS_BACKUP VALUES(NEW.PID,NEW.PNAME,NEW.PQTY,NEW.PPRICE,'UPDATE VALUE',CURRENT_TIMESTAMP());



END /

DELIMITER ;

UPDATE PRODUCTS SET PNAME='QMOBILE', PQTY=15, PPRICE=14000 WHERE PID=1;


============================================(EXCEPTION HANDLING)==============================================

Delimiter /

CREATE PROCEDURE dtinsert(IN cust_code varchar(10), IN cust_name varchar(40), IN cust_type varchar(50))
BEGIN
	DECLARE EXIT HANDLER FOR 1146
	select 'Sorry.... Customer table does not exist. Please create the table first' AS Message;

	DECLARE EXIT HANDLER FOR 1062
	select 'Customer_code that you are trying to enter is already present in customers table' AS Message;

	DECLARE EXIT HANDLER FOR 1048
	select 'Customer_code CAN NOT BE EMPTY OR NULL' AS Message;

	INSERT INTO CUSTOMERS VALUES(cust_code,cust_name,cust_type);

END /
Delimiter ;

call dtinsert('Cus039','Mouse','Laptop');

call dtinsert('Cus038','Mouse','Laptop');

call dtinsert(NULL,'Mouse','Laptop');
--------------------------------------------------------------------------------------------------------------

mysql> call dtinsert('Cus038','Mouse','Laptop');

+----------------------------------------------------------------------------------+
| Message
       |
+----------------------------------------------------------------------------------+
| Customer_code that you are trying to enter is already present in customers table |
+----------------------------------------------------------------------------------+

--------------------------------------------------------------------------------------------------------------

call dtinsert(NULL,'Mouse','Laptop');

+----------------------------------------+
| Message                                |
+----------------------------------------+
| Customer_code CAN NOT BE EMPTY OR NULL |
+----------------------------------------+
