# MY SQL BUILT IN FUNCTIONS
 # use "Ctrl+Enter" key for executing the codes per ; "Semicolon"
show databases;
use world;
show tables;
select * from city;
describe city;
CREATE DATABASE sql_intro;
show databases;
CREATE TABLE Employee_Details (Name VARCHAR(20), Age INT,Sex CHAR(1),Date_of_Joining DATE,City VARCHAR(10),Salary float);
DESCRIBE Employee_Details;
INSERT INTO Employee_Details
VALUES('Jimmy',35,'M','2005,05-30','Chicago',70000),
('Shane',30,'M','1999-06-25','Seattle',55000),
('Mary',28,'F','2009-03-10','Boston',62000),
('Dwayne',37,'M','2011-07-12','Austin',57000),
('Sara',32,'F','2017-10-27','New York',72000),
('Ammy',35,'F','2014-12-20','Seattle',80000); 
SELECT * FROM Employee_Details;
SELECT DISTINCT City FROM Employee_Details;
SELECT COUNT(Name) AS 'Number of Employees' FROM Employee_Details;
SELECT SUM(Salary) AS 'TotalSalary Distributed' FROM Employee_Details;
SELECT AVG(Salary) AS AVG_Salary FROM Employee_Details; 
SELECT Age,Name,Salary FROM Employee_Details;
SELECT * FROM Employee_Details WHERE Age > 30;
USE sql_intro;
SELECT * FROM Employee_Details WHERE Sex = 'F';
SELECT * FROM Employee_Details WHERE City = "Chicago" OR City = "Boston";
SELECT * FROM Employee_Details WHERE City IN ('Chicago','Boston');
SELECT * FROM Employee_Details WHERE Date_of_Joining BETWEEN '2000-01-01' AND '2010-12-31';
SELECT sex,SUM(salary) as 'Total Salary' FROM Employee_Details GROUP BY sex;
SELECT * FROM Employee_Details ORDER BY salary;
SELECT * FROM Employee_Details ORDER BY Salary DESC;
SELECT (69-420) AS Subtract;
SELECT (420+69) AS Addition;
SELECT length('Cinco') AS Length;
SELECT REPEAT('_',10);
SELECT UPPER('khade ho');
SELECT LOWER('SIT DOWN');
SELECT CURDATE();
SELECT NOW();
SELECT DAY(CURRENT_DATE());
# Strings Function
SELECT UCASE('jobuthejabba') AS Upper_case;
SELECT LCASE("JABBA") AS Lower_case;
SELECT CHAR_LENGTH('I Love my India') AS Length;
SELECT CONCAT('India',' is',' my',' Country') AS Merged;
USE sql_intro;
SELECT Name, CHAR_LENGTH(Name) FROM Employee_details;
SELECT CONCAT(Sex," ",Name," ",Age) AS merged_details FROM Employee_Details;
SELECT REVERSE(Name) FROM employee_details;
SELECT REPLACE("Orange is a Vegetable", 'Vegetable','Fruit');
SELECT * FROM Employee_Details;
SELECT REPLACE(Name, "Ammy",'Amreen') FROM Employee_Details;
SELECT length('      Jobu        ');
SELECT length(ltrim('      Jobu        '));
SELECT LENGTH(RTRIM('      Jobu        '));
SELECT LENGTH(TRIM('      Jobu        '));
SELECT POSITION('Fruit' IN 'Orange is a Fruit');  
SELECT ASCII('A');
SELECT ASCII('a');
SELECT ASCII('1');

# GROUP BY AND HAVING CLAUSE

USE sql_intro;
ALTER TABLE Employee_Details ADD Emp_ID INT FIRST;
ALTER TABLE Employee_Details RENAME COLUMN Name TO Employee_Name;
ALTER TABLE Employee_Details RENAME COLUMN Employee_Name TO Emp_Name;
INSERT INTO Employee_Details (Emp_ID)
VALUES (101),(102),(103),(104),(105),(106);
DELETE FROM Employee_Details WHERE Emp_ID = 106;
UPDATE Employee_Details 
SET Emp_ID = 101
WHERE Emp_Name = 'Jimmy';
SELECT * FROM Employee_Details;
UPDATE Employee_Details SET Emp_ID = 102 WHERE Emp_Name = 'Shane';
UPDATE Employee_Details SET Emp_ID = 103 WHERE Emp_Name = 'Mary';
UPDATE Employee_Details SET Emp_ID = 104 WHERE Emp_Name = 'Dwayne';
UPDATE Employee_Details SET Emp_ID = 105 WHERE Emp_Name = 'Sara';
UPDATE Employee_Details SET Emp_ID = 106 WHERE Emp_Name = 'Ammy';
UPDATE Employee_Details SET Emp_Name = 'Marry' WHERE Emp_Name = 'Mary';
ALTER TABLE Employee_Details RENAME COLUMN Date_of_Joining TO DOJ;
ALTER TABLE Employee_Details ADD COLUMN Dept VARCHAR(10) AFTER DOJ;
INSERT INTO Employee_Details
VALUES (107,'Jack',40,'M','2012-07-14','Finance','Houston',100000),
	   (107,'Angela',36,'F','2007-02-04','Tech','New York',110000),
       (107,'Marcus',25,'M','2010-07-18','HR','Boston',90000),
       (107,'David',34,'M','2009-08-25','Product','Miami',75000),
       (107,'Rose',28,'F','2011-02-27','Tech','Chicago',60000),
       (107,'Sophia',33,'F','2013-09-21','HR','Houston',65000),
       (107,'Amelia',30,'F','2018-10-15','Finance','Austin',55000),
       (107,'Robert',40,'M','2015-12-18','Sales','Detroit',95000),
       (107,'William',36,'M','2016-04-20','IT','Chicago',83000),
       (107,'John',32,'M','2004-08-09','Marketing','Miami',67000),
       (107,'Bella',29,'F','2002-06-11','Tech','Detroit',72000),
       (107,'Maya',25,'F','2018-10-15','IT','Houston',48000),
       (107,'Alice',37,'F','2019-05-28','Product','Seattle',76000),
       (107,'Joseph',45,'M','2016-11-23','Sales','Chicago',115000);
UPDATE Employee_Details SET Dept = 'Sales' WHERE Emp_Name = 'Jimmy';
UPDATE Employee_Details SET Dept = 'Mareketing' WHERE Emp_Name = 'Shane';
UPDATE Employee_Details SET Dept = 'Product' WHERE Emp_Name = 'Marry';
UPDATE Employee_Details SET Dept = 'Tech' WHERE Emp_Name = 'Dwayne';
UPDATE Employee_Details SET Dept = 'Sales' WHERE Emp_Name = 'Sara';
UPDATE Employee_Details SET Dept = 'IT' WHERE Emp_Name = 'Ammy';
UPDATE Employee_Details SET Emp_ID = 108 WHERE Emp_Name  = 'Angela';
UPDATE Employee_Details SET Emp_ID = 109 WHERE Emp_Name  = 'Marcus';
UPDATE Employee_Details SET Emp_ID = 110 WHERE Emp_Name  = 'David';
UPDATE Employee_Details SET Emp_ID = 111 WHERE Emp_Name  = 'Rose';
UPDATE Employee_Details SET Emp_ID = 112 WHERE Emp_Name  = 'Sophia';
UPDATE Employee_Details SET Emp_ID = 113 WHERE Emp_Name  = 'Amelia';
UPDATE Employee_Details SET Emp_ID = 114 WHERE Emp_Name  = 'Robert';
UPDATE Employee_Details SET Emp_ID = 115 WHERE Emp_Name  = 'William';
UPDATE Employee_Details SET Emp_ID = 116 WHERE Emp_Name  = 'John';
UPDATE Employee_Details SET Emp_ID = 117 WHERE Emp_Name  = 'Bella';
UPDATE Employee_Details SET Emp_ID = 118 WHERE Emp_Name  = 'Maya';
UPDATE Employee_Details SET Emp_ID = 119 WHERE Emp_Name  = 'Alice';
UPDATE Employee_Details SET Emp_ID = 120 WHERE Emp_Name  = 'Joseph';
USE sql_intro;
UPDATE Employee_Details SET Emp_Name = 'Mary' WHERE Emp_Name = 'Marry';
SELECT * FROM Employee_Details;
SELECT DISTINCT Dept FROM Employee_Details;
SELECT DISTINCT City FROM Employee_Details;
SELECT AVG(Salary) FROM Employee_Details;
SELECT Dept, ROUND(AVG(Age),0) AS "Average Age" FROM Employee_Details GROUP BY Dept;
SELECT Dept, SUM(Salary) AS "Total Salary" FROM Employee_Details GROUP BY Dept;
SELECT City, COUNT(Emp_ID) FROM Employee_Details GROUP BY City ORDER BY Emp_ID;
SELECT YEAR(DOJ) AS Year, COUNT(Emp_ID) AS 'Total Employee Joined' FROM Employee_Details GROUP BY YEAR(DOJ);
CREATE TABLE SALES (Product_ID INT, Sell_Price FLOAT, QTY INT, Status VARCHAR(20));
DESCRIBE SALES;
ALTER TABLE SALES RENAME Sales; 
SHOW TABLES;
ALTER TABLE Sales RENAME COLUMN Status to State;
DESCRIBE Sales;
INSERT INTO Sales
VALUES (121,320,3,'California'),
	   (121,320,6,'Texas'),
       (121,320,4,'Alaska'),
       (123,290,2,'Texas'),
       (123,290,7,'California'),
       (123,290,4,'Washington'),
       (121,320,7,'Ohio'),
       (121,320,2,'Arizona'),
       (123,290,8,'Colorado');
SELECT * FROM Sales;
SELECT Product_id, SUM(Sell_price*QTY) AS Revenue FROM Sales GROUP BY Product_ID;
CREATE TABLE Prod_Cost (Product_ID INT, Cost_Price FLOAT);
DESCRIBE Prod_Cost;
INSERT INTO Prod_Cost
VALUES (121,270),
       (123,250);
SELECT * FROM Prod_Cost;
SELECT c.product_id, SUM((s.sell_price - c.cost_price) * qty) AS profit
FROM sales AS s INNER JOIN prod_cost AS c
USING (product_id) GROUP BY c.product_id;
SELECT dept, AVG(salary) AS 'AVG salary' FROM employee_details GROUP BY dept HAVING AVG(salary) > 75000;
SELECT city, SUM(salary) AS 'total salary' FROM employee_details GROUP BY city HAVING SUM(salary) > 200000; 
SELECT dept, COUNT(emp_id) AS total_employee FROM employee_details GROUP BY dept HAVING COUNT(emp_id) > 2;
SELECT dept, COUNT(*) AS total_employee FROM employee_details GROUP BY dept HAVING COUNT(*) > 2;
SELECT city, COUNT(*) AS emp_count FROM employee_details WHERE city != 'Houston' HAVING COUNT(*) > 2;
SELECT city, COUNT(*) AS emp_count FROM employee_details WHERE city != 'Houston' GROUP BY city HAVING COUNT(*) > 2;
SELECT dept, COUNT(*) AS Emp_count FROM employee_details GROUP BY dept HAVING AVG(salary) > 75000;

# Joins in SQL

# INNER Join

CREATE DATABASE sql_joins;
SHOW DATABASES;
USE sql_joins;
CREATE TABLE cricket ( cricket_id INT AUTO_INCREMENT, name VARCHAR(30), PRIMARY KEY(cricket_id));
CREATE TABLE football (football_id INT AUTO_INCREMENT, name VARCHAR(30), PRIMARY KEY(football_id));
INSERT INTO cricket (name)
VALUES('stuart'),('michael'),('johnson'),('hayden'),('fleming');
SELECT * FROM cricket;
INSERT INTO football (name) VALUES('stuart'),('johnson'),('hayden'),('langer'),('astle');
SELECT * FROM football;
SELECT f.name FROM football f INNER JOIN cricket c USING (name);
SELECT * FROM cricket INNER JOIN football USING (name);
SELECT * FROM cricket c INNER JOIN football f ON c.name=f.name;
SHOW DATABASES;
USE classicmodels;
SELECT * FROM products;
SELECT * FROM productlines;
SELECT prod.productcode, prod.productname, prodl.textdescription FROM products prod INNER JOIN productlines prodl USING (productline);
SELECT ordernumber, p.productname, SUM(od.priceeach*od.quantityordered) AS Revenue , o.status FROM orderdetails od INNER JOIN products p USING (productcode) INNER JOIN orders o USING (ordernumber) GROUP BY ordernumber;

# LEFT Join

SELECT c.customernumber, c.customername, o.ordernumber, o.status FROM customers c LEFT JOIN orders o USING (customernumber);
SELECT c.customernumber, c.customername, o.ordernumber, o.status FROM customers c LEFT JOIN orders o USING (customernumber) WHERE o.ordernumber IS NULL;

# Right Join

SELECT c.customername, CONCAT(c.contactfirstname," ",c.contactlastname) AS 'Contact Person', c.phone, e.employeenumber, CONCAT(e.firstname," ",e.lastname) AS 'Employee NAME', e.email
FROM customers c RIGHT JOIN Employees e ON c.salesrepemployeenumber = e.employeenumber
GROUP BY e.employeenumber  HAVING customername IS NOT NULL ORDER BY c.customername;

# Self Join

SELECT CONCAT(m.lastname,' ',m.firstname) AS Manager, CONCAT(e.lastname,' ',m.firstname) AS Employee FROM Employees m INNER JOIN Employees e ON m.employeenumber = e.reportsto ORDER BY Manager; 

# FULL Join

SELECT c.customername, o.ordernumber FROM customers c LEFT JOIN orders o USING (customernumber) UNION SELECT c.customername, o.ordernumber FROM customers c RIGHT JOIN orders o USING (customernumber);

# Subquery in SQL

USE sql_intro;
SELECT emp_name, dept, salary FROM employee_details
WHERE salary < ( SELECT AVG(salary) FROM employee_details);

# Update subquery

Create table products (prod_id int,item varchar(30), sell_price float, product_type varchar(30));
INSERT INTO products VALUES( 101, 'Jewellery', 1800, 'Luxury'), (102, 'T-Shirt', 100, 'Non-Luxury'), (103, 'Laptop', 1300, 'Luxury'), (104, 'Table', 400, 'Non-Luxury');
SELECT * FROM products;
CREATE TABLE orders (order_id INT, prod_sold VARCHAR(30), sell_price float);
INSERT INTO orders SELECT prod_id, item, sell_price FROM products WHERE prod_id IN (SELECT prod_id FROM products WHERE sell_price > 1000);
SELECT * FROM orders;

# UPDATE STATEMENT

SELECT * FROM Employee_details;
UPDATE Employee_details SET SALARY = SALARY*0.35 WHERE AGE IN (SELECT age FROM employee_details WHERE AGE >= 27 );









































