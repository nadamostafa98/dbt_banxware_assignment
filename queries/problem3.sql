/* Query to return the average order value for each month in the year 2023*/

/* The average order value for each month in 2023 is calculated, then the result is ordered ascendingly for easier navigation */


SELECT order_month,
       avg(total_amount) AS average
FROM transformed_sales_data
WHERE order_year = 2023
GROUP BY order_month
ORDER BY order_month;

/* The query returns 2 columns; the number of the month and the average order value for that month */