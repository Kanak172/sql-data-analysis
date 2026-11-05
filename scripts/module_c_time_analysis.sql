SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS sales_month,
    SUM(sales) AS monthly_revenue,
    SUM(quantity) AS monthly_units_sold,
    COUNT(order_id) AS monthly_orders
FROM retail_transactions
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY sales_month ASC;

SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS sales_month,
    AVG(sales) AS avg_monthly_order_value
FROM retail_transactions
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY sales_month ASC;

