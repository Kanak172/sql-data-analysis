# Dataset Documentation: Retail Transactions

## Overview
This dataset contains **15 verified retail transaction records** designed for Oracle 10g and ANSI SQL data analysis. It models e-commerce transactions across multiple product categories, regions, and customer segments.

---

## 📋 Schema & Data Dictionary

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `order_id` | NUMBER(10) | PRIMARY KEY, NOT NULL | Unique identifier for each transaction order. |
| `customer_id` | VARCHAR2(10) | NOT NULL | Unique customer identifier (e.g., C001, C002). |
| `product_name` | VARCHAR2(50) | NOT NULL | Name of the purchased product (Laptop, Phone, Chair, etc.). |
| `category` | VARCHAR2(30) | NOT NULL | Product category grouping (Electronics, Furniture). |
| `quantity` | NUMBER(5) | CHECK (quantity > 0) | Number of units purchased in the transaction. |
| `unit_price` | NUMBER(10, 2) | CHECK (unit_price > 0) | Price per single unit in USD. |
| `sales` | NUMBER(12, 2) | CHECK (sales > 0) | Total calculated revenue ($\text{quantity} \times \text{unit\_price}$). |
| `order_date` | DATE | NOT NULL | Date the transaction occurred (Jan 1–8, 2025). |
| `region` | VARCHAR2(20) | NOT NULL | Geographic sales region (North, South, East, West). |

---

## 📊 Dataset Statistics
* **Total Transactions**: 15 orders
* **Total Revenue**: $15,400.00
* **Total Units Sold**: 31 units
* **Date Range**: January 1, 2025 – January 8, 2025
* **Repeat Customers**: Features recurring buyers (`C001`, `C002`, `C003`, `C004`) to support customer lifetime value and frequency queries.