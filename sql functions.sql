-- Replace Function
SELECT replace('abc.org', 'abc', 'perscholas');

-- Excuting the function on a column
SELECT *, replace(state, 'CA', 'California') AS 'State Name'
FROM customers;

-- Update the table with outpput from function
UPDATE customers
set state = replace(state, 'CA', 'California');




SELECT * FROM customers;


Select REPLACE('abc.org', 'abc', 'perscholas');
-- add new column and update it with new replace string
SELECT *, replace(state, 'CA', 'California') AS 'State Name'
FROM customers;

-- Trim function remove some unwanted character or space from string LEADING,TRAILING
SELECT TRIM(LEADING '@' FROM '@perscholas.org@@@'); 
Select LTrim( '     @perscholas@@@       ');
Select RTrim( '                       @perscholas@@@       ');
Select Trim( '                       @perscholas@@@       ');

-- concat function (add to the string "
SELECT CONCAT('Per Scholas','-','NON-Profit');
SELECT concat(contactFirstName,' ',contactLastName) AS Fullname
FROM customers;

-- make string to uppercase/Lowercase
SELECT   UPPER('per scholas');
-- concat along with upper
SELECT  concat(contactFirstName,' ',contactLastName), 
UPPER(concat(contactFirstName,' ',contactLastName)) AS Fullname
FROM customers;

-- Math
SELECT COUNT(*) FROM products; 
SELECT COUNT(productLine) FROM products;

-- Knowing order of execution help me understand this better
SELECT productLine, COUNT(*) FROM products GROUP BY productLine;

-- SUM function
SELECT SUM(quantityOrdered) AS 'Total'
FROM OrderDetails;

SELECT SUM(amount) AS 'Total Amount'
FROM payments;

SELECT SUM(quantityOrdered * priceEach) as 'orderTotal'
  FROM orderdetails 
  WHERE orderNumber = 10100; 
  -- MIN & MAX 
  SELECT MAX(amount) AS 'ATMOST' , MIN(amount) AS 'ATLEAST'
  FROM payments;
  SELECT MAX(amount) as largest_payment_2004
  FROM payments 
  WHERE YEAR(paymentDate) = 2004;
  
  SELECT MIN(buyPrice) 
  FROM products 
  WHERE productline = 'Motorcycles';
  
  -- cast convert data type to another data type.ege date to string extra
  SELECT CAST('2014-02-28' AS DATE); 
  SELECT CAST("14:06:10" AS TIME);
  -- 
  SELECT CAST(4-6 AS UNSIGNED); 
  -- working with date and the format
  SELECT DATE_FORMAT(NOW(), '%r');  # Result: '01:14:04 PM'
SELECT NOW();         # Result: '2026-06-16 13:14:27'
SELECT LOCALTIME();   # Result: '2026-06-16 13:14:27'
  
  -- operators
  SELECT customers FROM classicmodels  WHERE column_name IS NULL;
  
select customerName, country, salesRepEmployeeNumber
from customers
WHERE salesRepEmployeeNumber IS NULL;
-- USING IF STATEMENT
SELECT customerNumber, customerName, country,
IF(state IS NULL, 'N/A', state) as state 
FROM classicmodels.customers;

-- In operatormore readable and can replace or 
SELECT * FROM Customers WHERE country IN ('USA ', 'France ');
SELECT * FROM Customers WHERE country NOT IN ('UK ', 'Germany');








