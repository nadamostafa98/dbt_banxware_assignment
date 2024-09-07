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