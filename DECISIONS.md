## Process Documentation

### 1) Setting Up The Environment:
   - STEP 1: I created a snowflake account and created the database called _home_assignment_ and a schema which I called _dummy_company_.
   - STEP 2: I installed dbt on my Linux OS using pip to create a virtual environment then installed dbt-core and dbt-snowflake.
   - STEP 3: I created a .dbt folder in my home (where the _profiles.yml_ file will be created).
   - STEP 4: I ran **dbt init** command and filled in the required information that was used to create _profiles.yml_ , created the project _dbt_banxware_assignment_ and initiated a connection with the _home_assignment_ database on snowflake.
   - STEP 5: I decided to use VS Code and opened the project on it, activated the dbt environment and ran **dbt debug** to test the connection with snowflake.
   
   Problems I faced:
   - Figuring out which commands to use when I was installing dbt was a little tricky but I managed to figure it out with some research.
   - The connection test with snowflake took some time to succeed without errors because I did not know the correct account name syntax but I managed to find answers online.

### 2) Data Ingestion:
   - I copied the _sales.csv_ and _customers.csv_ files into the "seeds" folder and used the **dbt seeds** command to ingest the data into the database on snowflake.
   - I decided to rename the files to _raw_sales_data.csv_ and _raw_customer_data.csv_ before the ingestion so that the tables are created directly with these names rather than having to rename them using a query or by editing the name on snowflake.  

### 3) Data Transformation:
   - I created a model to do the transformation process.
   - I named it _transformed_sales_data_ so that the created table is named accordingly directly.
   - In the _transformed_sales_data.sql_ file I chose its materialization as a table instead of a view so that the table is created in the database.
   - In the transformation query, I changed first the data type of order_date from varchar to date datatype then extracted the day, month and year.
   - I decided not to include the order_date in the transformed data since the day, month and year are there.
   - I calculated the total sales amount for each order as price * quantity.
   - Finally I ran **dbt run** to run the project.

### 4) Solving The Problems:
   - I created a worksheet on snowflake to write and test my queries for each problem.
   - In the fourth problem to find the customer that had the highest order volume in the month of October 2023, I decided not to order the result and use "limit to 1" after counting the number of orders of each customer just in case more than one customer had the Max amount. Instead, the query compares the number of orders of each customer to the max and returns all the customers that match.
