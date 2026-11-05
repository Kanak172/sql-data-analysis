-- Module E: Product & Category Analysis
SELECT product_name, SUM(sales) AS product_revenue FROM retail_transactions GROUP BY product_name ORDER BY product_revenue DESC;
SELECT category, SUM(sales) AS category_revenue FROM retail_transactions GROUP BY category ORDER BY category_revenue DESC;