# sql-challenge
HW 9 Bootcamp SQL

This repo is for the submission of homework 9:  SQL-Challenge.  

I started with at https://www.quickdatabasediagrams.com/

The final diagram is shown in the file "ERD screen shot"

This diagram was exported to postgresql and was used as a basis of the table_schemata.sql file.  In addition to the code that was exported, I had to add a primary key to a couple tables .
The data from the excel files was then imported.  PLEASE NOTE I did encounter an error because I had imported the employees file after one of the department files, and i got an error as one of the foreign key restraints in the department file depended on the employees table, which had not been imported yet.  So i changed the order of the import.

The queries were then done in the queries.sql file.

