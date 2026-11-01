-- remove duplicates and create cleaned final table


USE EcommerceCustomerAnalytics;

WITH Dupe AS(
SELECT *,
		ROW_NUMBER() OVER ( PARTITION BY Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country
							ORDER BY (SELECT NULL)) AS RowNum
FROM dbo.RetailCombined)

SELECT *
INTO dbo.RetailCleaned
FROM Dupe
WHERE RowNum = 1; 

