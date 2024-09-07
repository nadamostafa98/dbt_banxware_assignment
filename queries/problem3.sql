select order_month, avg(total_amount) as average from transformed_sales_data where order_year = 2023 group by order_month order by order_month;


