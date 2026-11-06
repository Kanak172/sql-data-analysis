-- Module F: Advanced Analytics (CTEs, Window Functions & Rankings)

-- 1. CTE & Repeat Customer Identification
WITH customer_summary AS (
    SELECT customer_id, COUNT(order_id) AS total_orders, SUM(sales) AS total_spent
    FROM retail_transactions
    GROUP BY customer_id
)
SELECT customer_id, total_orders, total_spent
FROM customer_summary
WHERE total_orders > 1
ORDER BY total_spent DESC;

-- 2. Category Product Rankings using RANK() and DENSE_RANK()
SELECT 
    category,
    product_name,
    SUM(sales) AS total_sales,
    RANK()       OVER (PARTITION BY category ORDER BY SUM(sales) DESC) AS rank_val,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY SUM(sales) DESC) AS dense_rank_val
FROM retail_transactions
GROUP BY category, product_name;

-- 3. Running Revenue Total Over Time
SELECT order_id, order_date, sales,
       SUM(sales) OVER (ORDER BY order_date, order_id) AS running_total_sales
FROM retail_transactions;