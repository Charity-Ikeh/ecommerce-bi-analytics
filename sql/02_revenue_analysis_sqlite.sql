/*
================================================
02 - REVENUE ANALYSIS (SQLite)
E-Commerce BI Analytics Project
Author: Charity Ikeh
================================================
*/

-- 1. Total Revenue
SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue
FROM online_retail_cleaned;
-- Result: 104053.87

------------------------------------------------

-- 2. Total Orders
SELECT
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail_cleaned;
-- Result: 259

------------------------------------------------

-- 3. Average Order Value
SELECT
    ROUND(SUM(Revenue) / COUNT(DISTINCT InvoiceNo), 2) AS avg_order_value
FROM online_retail_cleaned;
-- Result: 401.75

------------------------------------------------

-- 4. Monthly Revenue
SELECT
    InvoiceMonth,
    ROUND(SUM(Revenue), 2) AS monthly_revenue
FROM online_retail_cleaned
GROUP BY InvoiceMonth
ORDER BY InvoiceMonth;

------------------------------------------------

-- 5. Top 10 Products by Revenue
SELECT
    Description,
    ROUND(SUM(Revenue), 2) AS product_revenue
FROM online_retail_cleaned
GROUP BY Description
ORDER BY product_revenue DESC
LIMIT 10;

------------------------------------------------

-- 6. Revenue by Country
SELECT
    Country,
    ROUND(SUM(Revenue), 2) AS country_revenue
FROM online_retail_cleaned
GROUP BY Country
ORDER BY country_revenue DESC;