#!/bin/bash

# symfony 2.3 --- clear cache script

# param 1: environment [dev|prod] --- default: dev
# param 2: dir owner
# param 3: dir group

if [ "$1" != "" ]; then
    sudo rm -rf app/cache/$1/*
    sudo php app/console cache:clear --env=$1
    sudo php app/console assets:install --env=$1
    sudo php app/console assetic:dump --env=$1
else
    sudo rm -rf app/cache/dev/*
    sudo php app/console cache:clear
    sudo php app/console assets:install
    sudo php app/console assetic:dump
fi

sudo chmod 777 -R app/cache/ app/logs/

if [ "$2" != "" ] && [ "$3" != "" ]; then
    sudo chown $2:$3 -R app/cache/ app/logs/
fi

if [ "$2" != "" ]; then
    sudo chown $2:$2 -R app/cache/ app/logs/
fi

