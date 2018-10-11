#!/bin/bash
set -e

mysql --protocol=socket -uroot -p$MYSQL_ROOT_PASSWORD <<EOSQL
CREATE DATABASE moduledb;
GRANT ALL ON moduledb.* TO '$USER_LOGIN'@'%' IDENTIFIED BY '$USER_PASS';
EOSQL

mysqld_safe
