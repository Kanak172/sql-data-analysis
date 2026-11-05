# Dataset Documentation: Retail Transactions

## Overview
This dataset simulates retail store transactions across multiple regions, categories, and product lines, designed specifically for practicing and demonstrating SQL querying capabilities in **Oracle 10g**.

## Schema Definition (`retail_transactions`)

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `order_id` | `NUMBER(10)` | Unique identifier for each transaction order (Primary Key). |
| `order_date` | `DATE` | The date when the transaction took place. |
| `customer_id` | `VARCHAR2(10)` | Unique identifier for the customer. |
| `product_id` | `VARCHAR2(10)` | Unique identifier for the product. |
| `product_name` | `VARCHAR2(50)` | Name of the product sold. |
| `category` | `VARCHAR2(50)` | Product category (e.g., Electronics, Furniture). |
| `quantity` | `NUMBER(5)` | Number of units purchased in the transaction. |
| `unit_price` | `NUMBER(10, 2)` | Price per single unit of the product. |
| `sales` | `NUMBER(12, 2)` | Total sales amount (`quantity * unit_price`). |
| `region` | `VARCHAR2(30)` | Geographical sales region (North, South, East, West). |