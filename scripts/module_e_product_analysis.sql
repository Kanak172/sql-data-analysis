SELECT 
    product_id,
    product_name,
    SUM(quantity) AS total_units_sold
FROM retail_transactions
GROUP BY product_id, product_name
ORDER BY total_units_sold DESC;

SELECT 
    product_id,
    product_name,
    SUM(sales) AS total_revenue
FROM retail_transactions
GROUP BY product_id, product_name
ORDER BY total_revenue DESC;

SELECT 
    category,
    AVG(sales) AS avg_category_order_value,
    COUNT(order_id) AS total_orders
FROM retail_transactions
GROUP BY category
ORDER BY avg_category_order_value DESC;