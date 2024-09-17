#!/bin/sh

CURR_DIR=$PWD
UI_GIT_REPO=refactor
API_GIT_REPO=serialization

cd $CURR_DIR/Back
git checkout $API_GIT_REPO && git pull
cd $CURR_DIR/Front
git checkout $UI_GIT_REPO && git pull
cd $CURR_DIR

docker build --tag sisdrenagem/db ./postgres/
docker build --tag sisdrenagem/api ./Back/
docker build --tag sisdrenagem/ui ./Front/
