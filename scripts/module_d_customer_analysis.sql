-- Module D: Customer Spending Insights
SELECT customer_id, SUM(sales) AS total_spent FROM retail_transactions GROUP BY customer_id ORDER BY total_spent DESC;
SELECT customer_id, COUNT(order_id) AS order_count FROM retail_transactions GROUP BY customer_id HAVING COUNT(order_id) > 1 ORDER BY order_count DESC;