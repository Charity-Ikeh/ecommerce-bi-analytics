/*
========================================
02 - REVENUE ANALYSIS (SQLite)
E-Commerce BI Analytics Project
Author: Charity Ikeh
========================================
*/

-- 1. Total Revenue
SELECT
    SUM(Quantity * UnitPrice) AS total_revenue
FROM online_retail_clean;

------------------------------------------------

-- 2. Monthly Revenue (SQLite date formatting)
SELECT
    strftime('%Y-%m-01', InvoiceDate) AS invoice_month,
    SUM(Quantity * UnitPrice) AS monthly_revenue
FROM online_retail_clean
GROUP BY invoice_month
ORDER BY invoice_month;

------------------------------------------------

-- 3. Top 10 Products by Revenue
SELECT
    Description,
    SUM(Quantity * UnitPrice) AS product_revenue
FROM online_retail_clean
GROUP BY Description
ORDER BY product_revenue DESC
LIMIT 10;

------------------------------------------------

-- 4. Revenue by Country
SELECT
    Country,
    SUM(Quantity * UnitPrice) AS country_revenue
FROM online_retail_clean
GROUP BY Country
ORDER BY country_revenue DESC;
