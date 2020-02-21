### 备份mongo 数据库


```shell
#!/bin/sh

#create db user for backup
#> use dbname
#> db.createUser({user: "username", pwd: "password", roles: [{ role: "dbOwner", db: "dbname" }]})

CMD=/usr/bin/mongodump
BACK_DIR=/data/backup/mongo
HOST=172.16.245.119:27018

DB_NAME=exmall
DB_USER=exmall
DB_PASS=hCXrrzLKdsfdsfhG4CNh

EXCLUDE=loggings

ts=`date +%Y%m%d-%H%M%S`

 
$CMD -u $DB_USER -p $DB_PASS  -h $HOST --gzip --archive=$BACK_DIR/$DB_NAME-$ts.gz -d $DB_NAME --authenticationDatabase=$DB_NAME --excludeCollection="${EXCLUDE}"

exit
```
