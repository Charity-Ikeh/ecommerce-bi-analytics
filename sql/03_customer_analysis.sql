/*
========================================
03 - CUSTOMER ANALYSIS (MySQL)
E-Commerce BI Analytics Project
Author: Charity Ikeh
========================================

Purpose:
- Calculate total customers
- Identify top customers by revenue
- Calculate average revenue per customer
*/

-- 1. Total Unique Customers
SELECT 
    COUNT(DISTINCT CustomerID) AS total_customers
FROM online_retail_clean;

--------------------------------------------------

-- 2. Top 10 Customers by Revenue
SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS customer_revenue
FROM online_retail_clean
GROUP BY CustomerID
ORDER BY customer_revenue DESC
LIMIT 10;

--------------------------------------------------

-- 3. Average Revenue Per Customer
SELECT 
    SUM(Quantity * UnitPrice) / COUNT(DISTINCT CustomerID) 
    AS avg_revenue_per_customer
FROM online_retail_clean;
