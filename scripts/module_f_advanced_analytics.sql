WITH category_product_sales AS (
    SELECT 
        category,
        product_name,
        SUM(sales) AS total_revenue
    FROM retail_transactions
    GROUP BY category, product_name
)
SELECT 
    category,
    product_name,
    total_revenue,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY total_revenue DESC) AS rank_in_category
FROM category_product_sales;

SELECT 
    order_id,
    order_date,
    sales,
    SUM(sales) OVER (ORDER BY order_date, order_id) AS running_total_revenue
FROM retail_transactions;

SELECT 
    region,
    SUM(sales) AS regional_revenue,
    ROUND((SUM(sales) / (SELECT SUM(sales) FROM retail_transactions)) * 100, 2) AS pct_of_total_revenue
FROM retail_transactions
GROUP BY region
ORDER BY pct_of_total_revenue DESC;

SELECT 
    customer_id,
    SUM(sales) AS total_spent,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS customer_rank
FROM retail_transactions
GROUP BY customer_id;