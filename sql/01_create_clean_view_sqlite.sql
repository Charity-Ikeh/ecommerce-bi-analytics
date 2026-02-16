/*
========================================
01 - CREATE CLEAN VIEW (SQLite)
E-Commerce BI Analytics Project
Author: Charity Ikeh
========================================
*/

DROP VIEW IF EXISTS online_retail_clean;

CREATE VIEW online_retail_clean AS
SELECT *
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;


