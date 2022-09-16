# SQL DVD Rental Database Analysis

## Description
The database is gotten from postgreSQL sample database which can be found [here]('https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/').\
The data represent the business data of a dvd rental store. 

## Database ERD
The database Entity Relationship Diagram (ERD) is shown below and is also enclosed as a file in this repo (*dvd-rental-erd*).
![image](https://github.com/UChisom/sakila-dvd-rental-analysis/blob/master/dvd-rental-erd.png?raw=true)

## Database Tables
There are 14 tables in the DVD Rental database. They are described as follows:

1. actor – stores actors data including first name and last name.
2. film – stores film data such as title, release year, length, rating, etc.
3. film_actor – stores the relationships between films and actors.
4. category – stores film’s categories data.
5. film_category- stores the relationships between films and categories.
6. store – contains the store data including manager staff and address.
7. inventory – stores inventory data.
8. rental – stores rental data.
9. payment – stores customer’s payments.
10. staff – stores staff data.
11. customer – stores customer data.
12. address – stores address data for staff and customers
13. city – stores city names.
14. country – stores country names.

## Setup

To load the database and run locally, follow the steps below for postgres (using pgadmin):
- Unzip the __dvdrental_db.zip__ file to obtain the __dvdrental.tar__ db file
- Open pgadmin application on you local machine and create a new database
- Right click on the new database and select restore
- Select the format under the General tab to **custom or tar**
- Select the filename bar and navigate to the file path where the unzipped __dvdrental.tar__ is stored and select it
- Click restore and let it load

## More resources
To load the database using **psql** commands instead, follow this [guide]('https://www.postgresqltutorial.com/postgresql-getting-started/load-postgresql-sample-database/').
