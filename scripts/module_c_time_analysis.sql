-- Module C: Time-Based Analytics
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month, SUM(sales) AS monthly_sales FROM retail_transactions GROUP BY TO_CHAR(order_date, 'YYYY-MM') ORDER BY month;
SELECT order_date, SUM(sales) AS daily_sales FROM retail_transactions GROUP BY order_date ORDER BY order_date;