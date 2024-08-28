#!/bin/sh

docker build --tag sisdrenagem/db ./sisdrenagem-db/
docker build --tag sisdrenagem/api ./sisdrenagem-api/
docker build --tag sisdrenagem/ui ./sisdrenagem-ui/
