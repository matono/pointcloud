#! /bin/sh

DB=compression_benchmark
PGUSER=pointcloud 
PGPASSWORD=pointcloud
PGHOST=localhost

createdb -U $PGUSER $DB

psql -U $PGUSER -d $DB -f pointcloud.sql > /dev/null 2>&1
psql -U $PGUSER -d $DB -f pointcloud-laz.sql > /dev/null 2>&1
psql -U $PGUSER -d $DB -f pointcloud-dim.sql > /dev/null 2>&1
psql -U $PGUSER -d $DB -f pointcloud-ght.sql > /dev/null 2>&1
psql -U $PGUSER -d $DB -f getsize.sql

dropdb -U $PGUSER $DB
