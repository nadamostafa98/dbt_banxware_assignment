/* Query to return the top 5 products by total sales amount in the year 2023*/

/* First the total sales amount of each product in 2023 is calculated, then the result is ordered descendingly, then finally the top 5 are selected */

SELECT product_id,
       product_name,
       sum(total_amount) AS total_sales_amount
FROM transformed_sales_data
WHERE order_year = 2023
GROUP BY product_id,
         product_name
ORDER BY total_sales_amount DESC
LIMIT 5;

/* The query returns the product_name, product_id and the total amount of all sales made of that product in 2023*/ 
