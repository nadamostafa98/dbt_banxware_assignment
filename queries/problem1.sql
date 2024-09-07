SELECT product_id,
       product_name,
       sum(total_amount) AS total_sales_amount
FROM transformed_sales_data
WHERE order_year = 2023
GROUP BY product_id,
         product_name
ORDER BY total_sales_amount DESC
LIMIT 5;