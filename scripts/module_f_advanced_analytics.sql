-- Module F: Advanced Analytics (Window Functions & CTEs)
SELECT product_name, category, SUM(sales) AS total_sales,
        DENSE_RANK() OVER (PARTITION BY category ORDER BY SUM(sales) DESC) AS category_rank
FROM retail_transactions
GROUP BY product_name, category;

SELECT order_id, order_date, sales,
        SUM(sales) OVER (ORDER BY order_date, order_id) AS running_total_sales
FROM retail_transactions;