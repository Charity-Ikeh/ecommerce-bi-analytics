/*
================================================
03 - CUSTOMER ANALYSIS (SQLite)
E-Commerce BI Analytics Project
Author: Charity Ikeh
================================================
*/

-- 1. Total Unique Customers
SELECT
    COUNT(DISTINCT CustomerID) AS total_customers
FROM online_retail_cleaned
WHERE CustomerID IS NOT NULL;
-- Result: 179

------------------------------------------------

-- 2. Top 10 Customers by Revenue
SELECT
    CAST(CustomerID AS INTEGER) AS CustomerID,
    ROUND(SUM(Revenue), 2) AS customer_revenue
FROM online_retail_cleaned
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY customer_revenue DESC
LIMIT 10;

------------------------------------------------

-- 3. Average Revenue Per Customer
SELECT
    ROUND(SUM(Revenue) / COUNT(DISTINCT CustomerID), 2) AS avg_revenue_per_customer
FROM online_retail_cleaned
WHERE CustomerID IS NOT NULL;
-- Result: 508.59

------------------------------------------------

-- 4. Repeat Customer Rate
SELECT
    ROUND(
        COUNT(CASE WHEN order_count > 1 THEN 1 END) * 100.0 / COUNT(*), 1
    ) AS repeat_customer_rate_pct
FROM (
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS order_count
    FROM online_retail_cleaned
    WHERE CustomerID IS NOT NULL
    GROUP BY CustomerID
);
-- Result: 12.8%