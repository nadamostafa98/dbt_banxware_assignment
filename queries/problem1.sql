select product_id , product_name, sum(total_amount) as total_sales_amount from transformed_sales_data where order_year = 2023 group by product_id, product_name order by total_sales_amount desc limit 5;

