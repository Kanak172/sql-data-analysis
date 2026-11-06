-- Module C: Time-Based Analytics & Trends

-- 1. Daily sales breakdown
SELECT order_date, COUNT(order_id) AS daily_orders, SUM(sales) AS daily_sales
FROM retail_transactions
GROUP BY order_date
ORDER BY order_date;

-- 2. Monthly revenue, order count, and monthly AOV
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS sales_month,
    COUNT(order_id)                AS monthly_orders,
    SUM(sales)                     AS monthly_revenue,
    ROUND(AVG(sales), 2)           AS monthly_aov
FROM retail_transactions
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY sales_month;

-- 3. Day-over-day sales trajectory
SELECT order_date, SUM(sales) AS total_sales
FROM retail_transactions
GROUP BY order_date
ORDER BY order_date ASC;