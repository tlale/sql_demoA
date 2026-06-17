-- -- Turns off only full_group BY mode
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT 
 orderNumber,
 orderlinenumber, 
 quantityOrdered * priceEach
FROM orderdetails
ORDER BY quantityOrdered * priceEach DESC;

SELECT 
    orderNumber,
    orderLineNumber,
    quantityOrdered * priceEach AS subtotal
FROM    orderdetails
ORDER BY subtotal DESC;
-- practise how null apears in a table without descend(DESC) or 
-- ascend(ASC).null will apear first if not stated default

SELECT    
firstName,
 lastName, 
 reportsTo 
FROM    employees
ORDER BY reportsTo;
-- with aliase used
SELECT    
firstName,
 lastName, 
 reportsTo AS TeamLead
FROM    employees
ORDER BY reportsTo DESC;


