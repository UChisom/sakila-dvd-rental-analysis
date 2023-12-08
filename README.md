# SQL DVD Rental Database Analysis

This projects demonstrates matery of SQL querying techniques to:

- Generate insights
- Write complex queries
- Optimize SQL queries
  
## Description

In this poject, I create a local data base using postgreSQL.


> The dataset is business data from a dvd rental store. 

## Database ERD

The database Entity Relationship Diagram (ERD) is shown below [also in this repo (*dvd-rental-erd*)].
![image](https://github.com/UChisom/sakila-dvd-rental-analysis/blob/master/dvd-rental-erd.png?raw=true)


## Get Started

To load the database and run locally, follow the steps below for postgres (using pgadmin):

- Unzip the __dvdrental_db.zip__ file to obtain the __dvdrental.tar__ db file
- Open pgadmin application on you local machine and create a new database
- Right click on the new database and select restore
- Select the format under the General tab to **custom or tar**
- Select the filename bar and navigate to the file path where the unzipped __dvdrental.tar__ is stored and select it
- Click restore and let it load

## More resources
To load the database using **psql** commands instead, follow this [guide](https://www.postgresqltutorial.com/postgresql-getting-started/load-postgresql-sample-database/).
