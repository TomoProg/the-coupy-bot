#!/bin/bash

# どこからでも起動できるようにディレクトリに移動しておく
cd `dirname $0`

# 環境変数設定
source ./docker-compose-env.sh

# 環境変数表示
echo "MYSQL_USER=$MYSQL_USER"
echo "MYSQL_PASSWD=$MYSQL_PASSWD"
echo "MYSQL_DATABASE=$MYSQL_DATABASE"
echo "APP_ENV=$APP_ENV"

docker-compose -f docker-compose-data.yml up -d --no-recreate
if [ "$APP_ENV" == "production" ]; then
	docker-compose -f docker-compose-production.yml $*
else
	docker-compose -f docker-compose-develop.yml $*
fi
