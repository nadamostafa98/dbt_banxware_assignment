SELECT order_month,
       avg(total_amount) AS average
FROM transformed_sales_data
WHERE order_year = 2023
GROUP BY order_month
ORDER BY order_month;