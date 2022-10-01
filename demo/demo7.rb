# 27 september 2022

# database intro

# vocabulary

# database - organized collection of data
# typically stored electronically

# database management system (dbms)
# - software that manages databases

# postgres
# - example of a database management software
# - other examples: mySQL, mariaDB

# 2 main paradigms:

# 1) relational
# 2) non-relational


# 1) relational (SQL database)
# relation = table
# columns = fields = meta data
# rows = records = actual data

# employees table - you have employees records
# first_name    | last_name     | age
# Abdul         | Magundacan    | 31
# Michael       | Jordan        | 55

# a relational db can have 0 or more relations/tables

# typically our apps have 3 databases (same schema, different types of data):
#   - development database... this contains random data needed for development
#           gem to produce random data (especially, if you need a lot), manually you will create, version of production database, sample of production database
#           typically dev will put the data
#   - test database... database used by our test code
#           test code runs our application code to automatically test our application code
#           db used for testing
#           you want to control the environment
#           your test code may be wrong - isolated database solely for testing
#   - production database... golden db... contains actual customer data

# schema = structure - database design

# RDBMS (relational database management system)
#   - specific type of DBMS
#   - postgres (PostgreSQL), MySQL, mariaDB, SQLite (mini version of RDBMS)
#   - used to create and manage our databases
#   - also gives the interface to interact with our data
#   - for basic stuff, it doesn't really matter what you use
#   - if you have more users, 15m users, then it will matter the differences between the RDBMS
#   - if you become limited, then it's time to switch databases
#   - rails default: using RDBMS

# SQL (Structured Query Language)
#   - simply put, it's the programming language for relational databases
#   - query language - to interact with the data being managed by our RDBMS
#   - to create, read, update, delete data
#   - in javascript, there's ECMA 262
#   - SQL standard - implemented by RDBMSs
#   - big overlap in RDBMSs in syntax
#   - typically extended by RDBMSs
#   - for example, postgres implements SQL standard then it has extensions and features outside of the standard
#   - RDBMSs different only in the extensions and features


# 2) non-relational (noSQL database)
# no tables; uses different data structure/s
# mongoDB
# advantage: efficient when it comes to performance, scaling
# disadvantage: no tables, which are easier to understand

# lex fridman
# early IG = 15m users using postgres
# you don't have to be picky, and need to waste time deciding your database
# postgres or mysql, go
# you can get away with a lot using just the basic stack
#   - same philosophy as rails
#   - rails assumes you're using RDBMS
#   - rails is opinionated
#   - convention over configuration
#   - so you can focus on the things that matter


# basic CRUd operations using SQL
#   Create
#   Read
#   Update
#   Delete


# tableplus.com
# IDE - it's like psql command line
# GUI
# psql and GUI are both client user interface, so we can interact with our database server

# in command line
pg_ctl start
psql -d default

# inside
\l
\l^C
\q

# connect using tableplus - GUI

on tableplus
# 1 create new connection
# 2 postgreSQL
# 3 create
# 4 name of connection - demo
# 5 host/socket 127.0.0.1 - nag-appear sa pag-start ng server - this means this machine - local server
# 6 port no. 5432
# 7 user - whoami on command line or echo $USER - germee
# 8 no password
# 9 database - default
# 10 connect

# once connected:
# 1 click sql - open sql editor

# go to tableplus - database: default