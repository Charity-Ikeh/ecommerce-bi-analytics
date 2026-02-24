# E-Commerce Business Intelligence Analytics

## SQL | Python | Power BI

A full end-to-end Business Intelligence project built on a real-world 
e-commerce transactions dataset. This project demonstrates practical 
data analytics skills across the complete BI workflow, from raw data 
cleaning through to executive-level business insight generation.

---

## Live Results

| Metric | Value |
|---|---|
| Total Revenue | £104,053.87 |
| Total Orders | 259 |
| Unique Customers | 179 |
| Average Order Value | £401.75 |
| Repeat Customer Rate | 12.8% |

---

## Project Structure

| Folder | Contents |
|---|---|
| `/data/raw` | Original dataset (online_retail_sample.xlsx) |
| `/data/cleaned` | Cleaned dataset output (online_retail_cleaned.csv) |
| `/sql` | SQL queries for KPI extraction and customer analysis |
| `/python` | Jupyter notebooks for data cleaning and EDA |
| `/images` | Chart outputs from Python analysis |
| `/reports` | Executive summary with business findings |
| `/powerbi` | Power BI dashboard files |

---

## What Was Done

### 1. Data Cleaning (Python)
- Removed cancelled invoices and invalid records
- Handled missing CustomerID values
- Created Revenue column (Quantity x UnitPrice)
- Extracted InvoiceMonth for time-series analysis
- Reduced dataset from 4,999 to 4,917 clean records

### 2. SQL Analysis (SQLite)
- Extracted total revenue, orders, customers and AOV
- Identified top 10 products and customers by revenue
- Analysed revenue by country
- Calculated repeat purchase rate and retention metrics

### 3. Python EDA (Matplotlib)
- Monthly revenue trend visualisation
- Top 10 products by revenue
- Top 10 countries by revenue
- Top 10 customers by revenue
- Full KPI summary with repeat customer rate

### 4. Power BI Dashboard
- Executive overview page with KPIs and trends
- Customer and product insights page
- Revenue by country visualisation

---

## Key Business Findings

- The United Kingdom drives over 95% of total revenue
- REGENCY CAKESTAND 3 TIER is the top revenue product
- Top 10 customers account for a disproportionate share of revenue
- A 12.8% repeat customer rate signals a retention opportunity
- £401.75 average order value indicates high-ticket purchasing behaviour

---

## Tools and Skills Demonstrated

SQL (SQLite) | Python | Pandas | NumPy | Matplotlib | Power BI | 
Git | Data Cleaning | KPI Analysis | Business Insight Generation

---

## Dataset
UCI Machine Learning Repository - Online Retail Dataset  
Used for portfolio and learning purposes only.

---

## About
This project is part of my transition into Data Analytics and 
Business Intelligence. It reflects hands-on development of SQL, 
Python, and BI dashboard skills applicable across e-commerce, 
retail, and corporate analytics environments.