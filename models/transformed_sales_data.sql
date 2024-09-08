/* To materialize the result as a table in the database*/

{{ config(materialized='table') }}

/* Transformation query */ 

with transform_sales as (


/* order_date datatype is first changed from varchar to date then we extract the day, month and year.
   total sales amount for each order  = quantity * price */

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