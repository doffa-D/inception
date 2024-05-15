#!/bin/bash

#'%' is a wildcard that matches any host, 0.0.0.0 
echo "\
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ADMIN_PASSWORD}';
CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};
CREATE USER IF NOT EXISTS '${MYSQL_USER_NAME}'@'%' IDENTIFIED BY '${MYSQL_USER_PASSWORD}';
GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER_NAME}'@'%';
FLUSH PRIVILEGES;" > /db.sql

mariadbd --user=mysql --bootstrap < /db.sql

exec "$@"