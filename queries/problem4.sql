select customer_id, name from raw_customers_data join (select count(customer_id)as amount, customer_id from transformed_sales_data where order_month = 10 and order_year = 2023 group by customer_id)on id= customer_id
and amount = (select max(amount) from (select count(customer_id) as amount, customer_id from transformed_sales_data where order_month = 10 and order_year = 2023 group by customer_id));

