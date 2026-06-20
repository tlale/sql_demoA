-- Turns off only full_group BY mode
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- GROUP BY
SELECT country, COUNT(*) as Count
FROM customers
GROUP BY country
ORDER BY Count DESC, country ASC;
-- check the progress of orders
SELECT status, COUNT(*)  AS 'Total Orders'
FROM orders
GROUP BY status;

SELECT orderNumber,SUM(quantityOrdered + priceEach) AS 'Total'
FROM orderdetails
GROUP BY orderNumber;

SELECT year(orderDate) AS year, COUNT(orderNumber) AS 'Total-Orders'
FROM orderdetails
GROUP BY year();
-- group by and having filters
SELECT ordernumber, 
    SUM(quantityOrdered) AS itemsCount, 
    SUM(priceeach*quantityOrdered) AS total 
FROM orderdetails 
   GROUP BY ordernumber
 HAVING total > 20000;  
 
 -- Having filter used along with AND operators
 SELECT ordernumber, SUM(quantityOrdered) AS itemsCount,
 SUM(priceeach*quantityOrdered) AS total 
FROM orderdetails 
GROUP BY ordernumber 
HAVING  total > 1000    AND   itemsCount > 600;

-- Using HAVING along with subqueries
Select customerNumber, avg(amount)  as avgAmount
from payments p1
group by customerNumber
	having avg(amount) > (
		Select avg(amount) from payments p2
	) order by 2 desc;
    -- 2
    
    
-- USING LIMIT AND EXPERIENCING WITH OFFSET
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 3,2;
-- using Like operators( s% ,  se_)_starts with a ends with e
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%e';

-- BETWEEN/NOT BETWEEN OPERATORS(uses value within given range
SELECT   productCode, productName, buyPrice
FROM    products
WHERE  buyPrice 
BETWEEN 90 AND 100;

-- NOT BETWEEN,AND,ORDER BY

SELECT     productCode,  productName, buyPrice
FROM   products
WHERE   buyPrice NOT BETWEEN 50 AND 100
ORDER BY buyPrice DESC;

-- BETWEEN, AND NOT 
SELECT * FROM Products WHERE (buyPrice BETWEEN 10 AND 20)
AND NOT productCode IN ('S10_1678','S10_1949');
-- 
SELECT * FROM Products
WHERE ProductName 
BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName
LIMIT 3,5;










    


   

