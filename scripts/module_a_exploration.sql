SELECT 
    COUNT(*) AS total_records,
    MIN(order_date) AS earliest_order_date,
    MAX(order_date) AS latest_order_date
FROM retail_transactions;

SELECT 
    COUNT(DISTINCT customer_id) AS unique_customers,
    COUNT(DISTINCT product_id) AS unique_products,
    COUNT(DISTINCT region) AS unique_regions
FROM retail_transactions;

SELECT 
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS missing_order_ids,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS missing_customers,
    SUM(CASE WHEN sales IS NULL THEN 1 ELSE 0 END) AS missing_sales,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS missing_quantities
FROM retail_transactions;

SELECT 
    COUNT(*) AS invalid_records_count
FROM retail_transactions
WHERE quantity <= 0 OR unit_price < 0 OR sales < 0;

SELECT 
    order_id, 
    COUNT(*) AS duplicate_count
FROM retail_transactions
GROUP BY order_id
HAVING COUNT(*) > 1;