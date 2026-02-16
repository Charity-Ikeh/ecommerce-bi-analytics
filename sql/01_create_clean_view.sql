/*
========================================
01 - CREATE CLEAN VIEW (MySQL)
E-Commerce BI Analytics Project
Author: Charity Ikeh
========================================

Purpose:
Creates a clean view of the Online Retail dataset by removing:
- Cancelled invoices (InvoiceNo starting with 'C')
- Negative/zero quantities
- Negative/zero prices
- Missing CustomerID
*/

CREATE OR REPLACE VIEW online_retail_clean AS
SELECT
    *
FROM online_retail
WHERE InvoiceNo NOT LIKE 'C%'
  AND Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;

