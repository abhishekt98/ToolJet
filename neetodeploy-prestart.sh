#!/bin/sh

echo "------> Running prestart script <------"
if [ $NEETODEPLOY_APP_DEFAULT_URL ]
then
    TOOLJET_HOST=$NEETODEPLOY_APP_DEFAULT_URL
    TOOLJET_SERVER_URL=$NEETODEPLOY_APP_DEFAULT_URL
fi

