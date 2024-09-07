### How To Run The Project

STEP 1 (Set up your environment):

  - Create a Snowflake account and set up a database named HOME_ASSIGNMENT and a schema with any name.
  - Install DBT and install snowflake as an adapter
  - create a profiles.yml file in ~/.dbt with the following content to connect with the database on snowflake:
    dbt_banxware_assignment:
      outputs:
        dev:
          account: <snowflake account name>
          database: HOME_ASSIGNMENT
          password: <snowflake account password>
          role: <snowflake role>
          schema: <your schema name>
          threads: 4
          type: snowflake
          user: <your username>
          warehouse: COMPUTE_WH
      target: dev
  
STEP 2 (Run the project):

  - Open the dbt_banxware_assignment folder in your terminal then activate the dbt environment.
      (check out https://docs.getdbt.com/docs/core/pip-install for help with activation).
  - Lastly, run the following commands:
      - dbt debug (To test your connection)
      - dbt run (To run the project)
Now your database is set and ready and you can check it out on your snowflake profile and run the queries in the 'queries' folder

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
