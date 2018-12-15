#! /bin/bash

set -e

#wait for the SQL Server to come up
sleep 20s

#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Yu89!ieP -d master -i /app/create-user.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U hibern8 -P langpaswoord123A%1 -d master -i /app/create-db.sql