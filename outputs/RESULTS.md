# Oracle 10g Execution Results & Outputs

This document contains the verified outputs for the 23 analytical SQL queries executed on Oracle 10g.

---

## 📌 Module A: Data Exploration & Quality Checks
* **Total Transactions**: 5 records verified.
* **Date Range**: January 1, 2025 – January 5, 2025.
* **Data Quality**: 0 nulls detected across primary key (`order_id`) and critical fields.

---

## 📌 Module B: Sales Performance Metrics
* **Total Revenue**: $88,000.00
* **Total Units Sold**: 15 units
* **Average Order Value (AOV)**: $17,600.00
* **Top Revenue Region**: South ($35,000.00)

---

## 📌 Module C: Time-Based Analytics
* **Monthly Sales (Jan 2025)**: $88,000.00 across 5 orders.
* **Daily Sales Trend**: Peak daily sales recorded on Jan 2, 2025 ($35,000.00).

---

## 📌 Module D: Customer Spending Insights
* **Top Customer by Spend**: `C002` ($35,000.00)
* **Repeat Buyers (`COUNT(order_id) > 1`)**: No records returned (expected, as each customer currently holds 1 order in the baseline dataset).

---

## 📌 Module E: Product & Category Analysis
* **Top Product by Revenue**: Phone ($35,000.00)
* **Top Category by Revenue**: Electronics ($71,000.00 across 3 orders)

---

## 📌 Module F: Advanced Analytics (Window Functions & CTEs)
* **Category Product Ranks (`DENSE_RANK()`)**: 
  * Electronics Rank 1: Phone ($35,000.00)
  * Furniture Rank 1: Desk ($9,000.00)
* **Cumulative Sales Running Total**:
  * 2025-01-01: $24,000.00
  * 2025-01-02: $59,000.00
  * 2025-01-03: $68,000.00
  * 2025-01-04: $80,000.00
  * 2025-01-05: $88,000.00