#!/bin/sh

CURR_DIR=$PWD
UI_GIT_REPO=refactor
API_GIT_REPO=database-integration

cd $PWD/Back
git checkout $API_GIT_REPO && git pull
cd $PWD/Front
git checkout $UI_GIT_REPO && git pull
cd $PWD

docker build --tag sisdrenagem/db ./postgres/
docker build --tag sisdrenagem/api ./Back/
docker build --tag sisdrenagem/ui ./Front/
