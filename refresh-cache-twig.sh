#!/bin/bash

# symfony 2.3 --- clear cache script

# param 1: environment [dev|prod] --- default: dev

if [ "$1" != "" ]; then
    rm -rf app/cache/$1/twig/*
    app/console assets:install --env=$1
    app/console assetic:dump --env=$1
else
    rm -rf app/cache/dev/twig/*
    app/console assets:install
    app/console assetic:dump
fi

