/* Query to return the customer that had the highest order volume in the month of October 2023*/

/* The number of orders made by each customer in october 2023 is calculated,then the Maximum number is selected.
   The number of orders made by each customer is then compared to that maximum number and if it matches, the customer is selected.
   Therefore, if the highest order volume is achieved by more than one customer, the query will return more than one row.
*/

SELECT customer_id,
       name
FROM raw_customers_data
    JOIN
        (SELECT count(customer_id)AS amount,
          customer_id
        FROM transformed_sales_data
        WHERE order_month = 10 AND order_year = 2023
        GROUP BY customer_id)
    ON id = customer_id
    AND amount =
        (SELECT max(amount)
        FROM
            (SELECT count(customer_id) AS amount,
             customer_id
            FROM transformed_sales_data
            WHERE order_month = 10
            AND order_year = 2023
            GROUP BY customer_id));

/* The query returns 2 columns; the customer_id and name */