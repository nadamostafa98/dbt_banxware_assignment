/* Query to return the names of the top 5 customers by total sales amount in the year 2023*/

/* First the total sales amount by each customer in 2023 is calculated, then the result is ordered descendingly, then finally the top 5 are selected */

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

/* The query returns just the name of the cusomer (1 column) */