{{ config(materialized='table') }}

with transform_sales as (

SELECT ORDER_ID,
       DAY (date(order_date)) AS order_day,
       MONTH (date(order_date)) AS order_month,
       YEAR (date(order_date)) AS order_year,
       CUSTOMER_ID,
       PRODUCT_ID,
       PRODUCT_NAME,
       QUANTITY,
       PRICE,
       QUANTITY*PRICE AS total_amount,
       ORDER_STATUS
FROM raw_sales_data,

)
select *
from transform_sales