-- Module A: Data Exploration & Comprehensive Quality Checks

-- 1. Total record count
SELECT COUNT(*) AS total_records FROM retail_transactions;

-- 2. Unique counts across entity dimensions
SELECT 
    COUNT(DISTINCT customer_id)  AS unique_customers,
    COUNT(DISTINCT product_name) AS unique_products,
    COUNT(DISTINCT category)     AS unique_categories,
    COUNT(DISTINCT region)       AS unique_regions
FROM retail_transactions;

-- 3. Date range bounds
SELECT MIN(order_date) AS start_date, MAX(order_date) AS end_date FROM retail_transactions;

-- 4. Null checks across critical fields
SELECT COUNT(*) AS null_critical_rows
FROM retail_transactions
WHERE order_id IS NULL OR customer_id IS NULL OR sales IS NULL OR order_date IS NULL;

-- 5. Duplicate order check
SELECT order_id, COUNT(*) AS duplicate_count
FROM retail_transactions
GROUP BY order_id
HAVING COUNT(*) > 1;

-- 6. Invalid values check (Negative or zero quantity/price/sales)
SELECT COUNT(*) AS invalid_financial_rows
FROM retail_transactions
WHERE quantity <= 0 OR unit_price <= 0 OR sales <= 0;

-- 7. Sales calculation integrity check (sales != quantity * unit_price)
SELECT COUNT(*) AS calculation_mismatch_rows
FROM retail_transactions
WHERE sales <> (quantity * unit_price);