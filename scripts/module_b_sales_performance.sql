SELECT 
    SUM(sales) AS total_revenue,
    SUM(quantity) AS total_units_sold,
    COUNT(order_id) AS total_orders
FROM retail_transactions;

SELECT 
    AVG(sales) AS average_order_value
FROM retail_transactions;

SELECT 
    product_name,
    SUM(quantity) AS total_units_sold,
    SUM(sales) AS total_product_revenue
FROM retail_transactions
GROUP BY product_name
ORDER BY total_product_revenue DESC;

SELECT 
    category,
    SUM(sales) AS category_revenue,
    COUNT(order_id) AS order_count
FROM retail_transactions
GROUP BY category
ORDER BY category_revenue DESC;

SELECT 
    region,
    SUM(sales) AS regional_revenue,
    SUM(quantity) AS regional_units_sold
FROM retail_transactions
GROUP BY region
ORDER BY regional_revenue DESC;