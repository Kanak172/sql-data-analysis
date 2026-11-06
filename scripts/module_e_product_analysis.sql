-- Module E: Product & Category Deep-Dive

-- 1. Product revenue and volume rankings
SELECT 
    product_name,
    category,
    SUM(sales)           AS total_revenue,
    SUM(quantity)        AS total_units_sold,
    ROUND(AVG(sales), 2) AS avg_sales_per_order
FROM retail_transactions
GROUP BY product_name, category
ORDER BY total_revenue DESC;

-- 2. Category level performance and Average Category Order Value
SELECT 
    category,
    COUNT(order_id)      AS total_category_orders,
    SUM(sales)           AS category_revenue,
    SUM(quantity)        AS category_units,
    ROUND(AVG(sales), 2) AS avg_category_order_value
FROM retail_transactions
GROUP BY category
ORDER BY category_revenue DESC;