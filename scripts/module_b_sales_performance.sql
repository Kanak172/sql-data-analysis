-- Module B: Sales Performance Metrics
SELECT SUM(sales) AS total_revenue FROM retail_transactions;
SELECT SUM(quantity) AS total_units_sold FROM retail_transactions;
SELECT AVG(sales) AS average_order_value FROM retail_transactions;
SELECT region, SUM(sales) AS regional_revenue FROM retail_transactions GROUP BY region ORDER BY regional_revenue DESC;