#!/bin/sh

#create db user for backup
#> use dbname
#> db.createUser({user: "username", pwd: "password", roles: [{ role: "dbOwner", db: "dbname" }]})

CMD=/usr/bin/mongodump
BACK_DIR=/data/backup/mongo
HOST=

DB_NAME=
DB_USER=
DB_PASS=
DAYS=7

tempdir=$BACK_DIR/temp
ts=`date +%Y%m%d-%H%M%S`

filename="${DB_NAME}-${ts}.tar.gz"

rm -rf $tempdir/*
$CMD -u $DB_USER -p $DB_PASS -o $tempdir -d $DB_NAME -h $HOST
cd $tempdir/$DB_NAME
tar -zcvf $BACK_DIR/$filename *
find $BACK_DIR/ -mtime +$DAYS -delete

exit