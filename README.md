# E-Commerce Business Intelligence Analytics (SQL + Python + Power BI)

## Project Overview
This project presents an end-to-end Business Intelligence case study using an online retail transactions dataset. The goal is to understand sales performance, customer purchasing behavior, and retention opportunities through a structured workflow: SQL analysis → Python EDA → Power BI dashboard → executive recommendations.

## Business Questions
- What is total revenue, total orders, total customers, and average order value (AOV)?
- Which products and customers contribute the most to revenue?
- How does revenue trend over time (monthly/seasonal pattern)?
- What is the repeat purchase rate, and what does it imply about retention?
- Which countries/markets drive the highest revenue?

## Dataset
Transactional dataset containing invoice-level purchases (InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country).

> Note: Dataset used for learning and portfolio demonstration. No personal or confidential business data is included.

## Tools Used
- SQL (business KPI queries)
- Python (pandas for cleaning + EDA)
- Power BI (dashboarding + KPI visualization)

## Workflow (Real-world Style)
1. **Data Cleaning**
   - Remove cancellations (InvoiceNo starting with "C")
   - Remove invalid Quantity/UnitPrice (≤ 0)
   - Handle missing CustomerID for customer-level analysis
   - Create Revenue = Quantity × UnitPrice
   - Extract Month from InvoiceDate

2. **SQL Analysis**
   - KPI extraction (Revenue, Orders, Customers, AOV)
   - Repeat customer analysis + repeat revenue contribution
   - Top customers/products + country performance

3. **Python EDA**
   - Data quality checks + distributions
   - Time trend exploration
   - Revenue concentration (top products/customers)
   - Optional: basic RFM segmentation (non-ML)

4. **Power BI Dashboard**
   - Executive Overview page (KPIs + trends)
   - Customer & Product Insights page
   - Retention/Funnel page

## Deliverables
- **SQL scripts:** `/sql`
- **Python notebooks:** `/python`
- **Power BI dashboard + screenshots:** `/powerbi` and `/images`
- **Executive summary (1 page):** `/reports`

## Revenue Analysis (SQLite)

### Total Revenue
Total revenue was calculated using:
SUM(Quantity * UnitPrice)

This shows the overall sales after cleaning invalid records.

![Total Revenue](images/total_revenue.png)

---

### Monthly Revenue
Monthly revenue was calculated using SQLite date functions to group sales by month.

This helps identify sales trends over time.

![Monthly Revenue](images/monthly_revenue.png)

---

### Top 10 Products by revenue
This identifies the highest revenue generating products.

![Top 10 Products by revenue](images/top_10_products_by_revenue.png)

---

### Revenue by Country
This shows which countries generate the most revenue.

![Revenue by Country](images/revenue_by_country.png)

---

## Customer Analysis

### Total Unique Customers
This calculates the total number of distinct customers after cleaning the dataset.

![Total Unique Customers](images/total_unique_customers.png)

---

### Top 10 Customers by Revenue
This identifies the highest revenue-generating customers.

![Top 10 Customers](images/top_10_customers_by_revenue.png)

---

### Average Revenue Per Customer
This measures customer value by dividing total revenue by total customers.

![Average Revenue Per Customer](images/avg_revenue_per_customer.png)


## Key Insights 

- Revenue varies by month, indicating strong seasonality patterns.
- A small percentage of products and customers generate a large share of total revenue (revenue concentration effect).
- The United Kingdom dominates total revenue, confirming it as the core market.
- Revenue is concentrated among high-value customers, highlighting the importance of customer retention strategies.
- Average revenue per customer provides a benchmark for estimating customer lifetime value.


## Next Improvements
- Add cohort retention view by month
- Enhance dashboard design using a consistent theme and layout
- Add basic RFM segmentation summary to support targeted retention strategies
