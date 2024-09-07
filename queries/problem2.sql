SELECT name
FROM raw_customers_data
JOIN
  (SELECT customer_id,
          sum(total_amount) AS total_sales_amount
   FROM transformed_sales_data
   WHERE order_year = 2023
   GROUP BY customer_id)
WHERE customer_id = id
ORDER BY total_sales_amount DESC
LIMIT 5;