#!/bin/bash

# Wait for DB container to initialize
sleep 10

mysql -h mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE DATABASE dvja CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
mysql -h mysql -u $MYSQL_USER -p$MYSQL_PASSWORD dvja < ./db/schema.sql

<<<<<<< HEAD
mvn jetty:run-forked
=======
mvn jetty:run
>>>>>>> ee382c83fa821d5dd7ed59ff7ad108d91b0046c0
