#!/bin/bash
# Grant the default user full privileges including CREATE DATABASE and GRANT OPTION
mysql -u root -p"${MYSQL_ROOT_PASSWORD}" <<-EOSQL
    GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' WITH GRANT OPTION;
    FLUSH PRIVILEGES;
EOSQL
