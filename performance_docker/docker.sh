#!/usr/bin/env bash

TASK_NAME=$1;

export PROJECT_NAME=performance
export PROJECT_WEB_DIR=web
export PROJECT_INDEX_FILE=app.php
export PROJECT_DEV_INDEX_FILE=app_dev.php
export APP_NAME=performance
export APP_VERSION=1.0
export USERID=$(id -u);
echo "User ID: $USERID";
echo -e "\nIMAGE VERSION: $APP_NAME:$APP_VERSION\n";
declare -i BUILD_STATUS=0;


function compose {
    docker-compose --verbose up
}

compose

echo -e "Script finished with exit code: ${BUILD_STATUS}";
exit $BUILD_STATUS;
