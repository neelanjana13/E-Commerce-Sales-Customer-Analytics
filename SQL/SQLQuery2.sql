--CHECK 1 - missing customer id

USE EcommerceCustomerAnalytics;

SELECT COUNT(*) AS Missing_CustomerID 
FROM dbo.RetailCombined WHERE Customer_ID IS NULL;


-- CHECK 2 - negative or zero quantity

SELECT COUNT(*) AS Negative_Quantity 
FROM dbo.RetailCombined WHERE Quantity <= 0;


-- CHECK 3 - missing description

SELECT COUNT(*) AS Missing_Description 
FROM dbo.RetailCombined WHERE Description IS NULL;


-- CHECK 4 - exact duplicate rows

SELECT Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country, 
		COUNT(*) AS ExactDuplicates FROM dbo.RetailCombined
GROUP BY Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country
HAVING COUNT(*) > 1;