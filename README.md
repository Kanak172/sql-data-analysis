# SQL Data Analysis Portfolio Project (Oracle 10g)

## 📊 Project Overview
This repository showcases an end-to-end **Retail Transaction Analysis** pipeline engineered for **Oracle 10g**. It demonstrates professional database design, data quality validation, and advanced SQL querying techniques including CTEs and analytic window functions (`RANK`, `DENSE_RANK`, running totals).

---

## 🛠️ Project Structure & Execution Order

```text
sql-data-analysis/
├── data/
│   ├── schema.sql           # DDL table creation with integrity constraints
│   ├── insert_data.sql      # 15 verified transaction records
│   └── DATASET.md           # Data dictionary and field documentation
├── scripts/
│   ├── module_a_exploration.sql       # Data exploration & quality checks
│   ├── module_b_sales_performance.sql # Core revenue, units, & AOV metrics
│   ├── module_c_time_analysis.sql      # Daily & monthly time-series trends
│   ├── module_d_customer_analysis.sql  # Customer spending & repeat buyers
│   ├── module_e_product_analysis.sql   # Product and category rankings
│   └── module_f_advanced_analytics.sql# CTEs, window functions, & running totals
├── outputs/
│   └── RESULTS.md           # Verified execution output log
├── LICENSE                  # MIT License
└── README.md