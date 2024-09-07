
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with transform_sales as (

    select  ORDER_ID, day (date(order_date)) as order_day, month (date(order_date)) as order_month, year (date(order_date)) as order_year, CUSTOMER_ID, PRODUCT_ID, PRODUCT_NAME, QUANTITY, PRICE, QUANTITY*PRICE as total_amount, ORDER_STATUS  from raw_sales_data,


)
select *
from transform_sales

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null