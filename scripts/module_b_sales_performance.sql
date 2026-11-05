-- Module B: Sales Performance Metrics
SELECT SUM(sales) AS total_revenue FROM retail_transactions;
SELECT SUM(quantity) AS total_units_sold FROM retail_transactions;
-- Corrected True AOV Query (Oracle 10g Compatible Subquery)
SELECT AVG(order_total) AS true_average_order_value
FROM (
    SELECT order_id, SUM(sales) AS order_total
    FROM retail_transactions
    GROUP BY order_id
);SELECT region, SUM(sales) AS regional_revenue FROM retail_transactions GROUP BY region ORDER BY regional_revenue DESC;
