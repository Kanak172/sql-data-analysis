-- Module B: Core Sales Performance Analytics

-- 1. High-level financial totals & AOV
SELECT 
    SUM(sales)                    AS total_revenue,
    SUM(quantity)                 AS total_units_sold,
    COUNT(DISTINCT order_id)      AS total_orders,
    ROUND(AVG(sales), 2)          AS average_order_value
FROM retail_transactions;

-- 2. Revenue and units by Product
SELECT product_name, SUM(sales) AS product_revenue, SUM(quantity) AS units_sold
FROM retail_transactions
GROUP BY product_name
ORDER BY product_revenue DESC;

-- 3. Revenue and units by Category
SELECT category, SUM(sales) AS category_revenue, SUM(quantity) AS units_sold
FROM retail_transactions
GROUP BY category
ORDER BY category_revenue DESC;

-- 4. Revenue and units by Region
SELECT region, SUM(sales) AS regional_revenue, SUM(quantity) AS units_sold
FROM retail_transactions
GROUP BY region
ORDER BY regional_revenue DESC;