-- Module D: Customer Spending & Behavior Analysis

-- 1. Customer total spending, order count, and total units
SELECT 
    customer_id,
    SUM(sales)           AS total_spent,
    COUNT(order_id)      AS order_count,
    SUM(quantity)        AS total_units_purchased,
    ROUND(AVG(sales), 2) AS customer_aov
FROM retail_transactions
GROUP BY customer_id
ORDER BY total_spent DESC;

-- 2. Repeat customer analysis (Customers with > 1 order)
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(sales)      AS lifetime_value
FROM retail_transactions
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY total_orders DESC, lifetime_value DESC;