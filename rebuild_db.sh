#!/bin/sh

docker stop sisdrenagem-db
docker container remove sisdrenagem-db
docker image remove sisdrenagem-db
docker build --tag sisdrenagem/db ./postgres/
docker run --name sisdrenagem-db \
  -e POSTGRES_HOST=sisdrenagem-db \
  -e POSTGRES_USER=sisdrenagem \
  -e POSTGRES_PASSWORD=tartarugasninja \
  -e POSTGRES_DB=sisdrenagem-dev \
  -d sisdrenagem/db:latest
