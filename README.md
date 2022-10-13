# README

* use bin/setup to download and set up code

* use bin/dev to run

## To set up database
* create 2 files called .env.development and .env.test
* set up a postgresql user with password and create a database, port default is 5432
* Add the following line to both files:
* DATABASE_URL= "postgresql://username:password@localhost:5432/databasename"
