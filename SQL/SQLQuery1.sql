CREATE DATABASE EcommerceCustomerAnalytics;

--to check the row count

USE EcommerceCustomerAnalytics;

SELECT COUNT(*) AS Rows_2009_2010 FROM dbo.[Year 2009-2010];
SELECT COUNT(*) AS Rows_2010_2011 FROM dbo.[Year 2010-2011];
 

--convert both years and convert datatypes

SELECT Invoice, StockCode, Description, Quantity,

	   COALESCE(TRY_CONVERT(datetime2, InvoiceDate, 120),
	           TRY_CONVERT(datetime2, InvoiceDate, 105)) AS InvoiceDate,
	   
	   TRY_CONVERT(decimal(10,2), Price) AS Price,
	   Customer_ID, Country, '2009-2010' AS SourceSheet

INTO dbo.RetailCombined
FROM dbo.[Year 2009-2010]

UNION ALL

SELECT Invoice, StockCode, Description, Quantity,

	   COALESCE(TRY_CONVERT(datetime2, InvoiceDate, 120),
	           TRY_CONVERT(datetime2, InvoiceDate, 105)) AS InvoiceDate,
	   
	   TRY_CONVERT(decimal(10,2), Price) AS Price,
	   Customer_ID, Country, '2010-2011' AS SourceSheet

FROM dbo.[Year 2010-2011];



--confirm the coonversion worked cleanly

USE EcommerceCustomerAnalytics;

SELECT COUNT(*) AS TotalRows FROM dbo.RetailCombined;
SELECT COUNT(*) AS Failed_Dates FROM dbo.RetailCombined WHERE InvoiceDate IS NULL;
SELECT COUNT(*) AS Failed_Prices FROM dbo.RetailCombined WHERE Price IS NULL;