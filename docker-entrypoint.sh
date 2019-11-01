#!/bin/bash
# do something before mysql start
## read env and create mysql config file
/usr/local/bin/env2file create --format mysql --path /etc/mysql/conf.d/custom.cnf
/usr/local/bin/mysqld_exporter &
# start mysql
exec /docker-entrypoint.sh "$@"
