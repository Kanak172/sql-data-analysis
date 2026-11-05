SELECT 
    customer_id,
    SUM(sales) AS total_customer_spent,
    COUNT(order_id) AS total_orders_placed
FROM retail_transactions
GROUP BY customer_id
ORDER BY total_customer_spent DESC;

SELECT 
    customer_id,
    COUNT(order_id) AS purchase_frequency,
    SUM(quantity) AS total_units_bought
FROM retail_transactions
GROUP BY customer_id
ORDER BY purchase_frequency DESC;

SELECT 
    customer_id,
    AVG(sales) AS avg_order_value_per_customer,
    COUNT(order_id) AS order_count
FROM retail_transactions
GROUP BY customer_id
ORDER BY avg_order_value_per_customer DESC;

SELECT 
    customer_id,
    COUNT(order_id) AS repeat_order_count,
    SUM(sales) AS total_revenue_from_customer
FROM retail_transactions
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY repeat_order_count DESC;

