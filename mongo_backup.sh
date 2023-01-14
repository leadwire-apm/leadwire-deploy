#!/bin/bash
 
APP_NAME="leadwire"
TIMESTAMP=`date +%F-%H%M`
BACKUPS_DIR="/backup"
BACKUP_NAME="$APP_NAME-$TIMESTAMP"
mongo_id=$(docker ps | grep "mongo" | awk '{print $1}')

docker exec  ${mongo_id} mongodump -u admin -p admin --gzip --out $BACKUPS_DIR/$BACKUP_NAME
