#!/bin/bash
set -e

# Abort if no server type is given
if [ "${1:0:1}" = '' ]; then
    echo "Aborting: No druid server type set!"
    exit 1
fi

MYSQL_CONNECT_URI="jdbc:mysql\:\/\/${MYSQL_HOST}\:${MYSQL_PORT}\/${MYSQL_DBNAME}\?characterEncoding=UTF-8"

java `cat /opt/druid/conf/druid/$1/jvm.config | xargs` -cp /opt/druid/conf/druid/_common:/opt/druid/conf/druid/$1:/opt/druid/lib/* io.druid.cli.Main server $@
