#!/bin/sh

docker container remove sisdrenagem-ui
docker container remove sisdrenagem-api
docker container remove sisdrenagem-db
docker image remove sisdrenagem-ui
docker image remove sisdrenagem-api
docker image remove sisdrenagem-db
docker build --tag sisdrenagem/db ./postgres/
docker build --tag sisdrenagem/api ./Back/
docker build --tag sisdrenagem/ui ./Front/
