#!/bin/sh

echo "------> Running prestart script <------"
echo $NEETODEPLOY_APP_DEFAULT_URL

if [ $NEETODEPLOY_APP_DEFAULT_URL ]
then
    TOOLJET_HOST=$NEETODEPLOY_APP_DEFAULT_URL
    TOOLJET_SERVER_URL=$NEETODEPLOY_APP_DEFAULT_URL
    PGRST_HOST=$PGRST_URL
    export TOOLJET_HOST
    export TOOLJET_SERVER_URL
    export PGRST_HOST

    username=$(echo "$DATABASE_URL" | sed -n 's#postgres://\([^:]*\):.*@\([^:]*\):.*#\1#p')
    password=$(echo "$DATABASE_URL" | sed -n 's#postgres://[^:]*:\([^@]*\)@.*#\1#p')
    host=$(echo "$DATABASE_URL" | sed -n 's#postgres://[^@]*@\([^:]*\):.*#\1#p')
    # Export variables for ToolJet
    export TOOLJET_DB_USER=$username
    export TOOLJET_DB_PASS=$password
    export TOOLJET_DB_HOST=$host
fi

