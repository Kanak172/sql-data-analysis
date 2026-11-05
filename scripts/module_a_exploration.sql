-- Module A: Data Exploration & Quality Checks
SELECT COUNT(*) AS total_records FROM retail_transactions;
SELECT MIN(order_date) AS min_date, MAX(order_date) AS max_date FROM retail_transactions;
SELECT COUNT(*) AS null_orders FROM retail_transactions WHERE order_id IS NULL;
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM retail_transactions;