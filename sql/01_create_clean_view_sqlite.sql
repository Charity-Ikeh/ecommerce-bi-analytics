/*
================================================
01 - DATA VERIFICATION (SQLite)
E-Commerce BI Analytics Project
Author: Charity Ikeh
================================================
Data cleaning was performed in Python.
This file verifies the cleaned dataset loaded
correctly into SQLite before analysis begins.
================================================
*/

-- Verify row count matches cleaned CSV
SELECT COUNT(*) AS total_rows 
FROM online_retail_cleaned;
-- Expected: 4917

-- Preview first 10 rows
SELECT * 
FROM online_retail_cleaned 
LIMIT 10;

-- Confirm all key columns are present
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT InvoiceNo) AS unique_invoices,
    COUNT(DISTINCT CustomerID) AS unique_customers,
    COUNT(DISTINCT Country) AS unique_countries
FROM online_retail_cleaned;