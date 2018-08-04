#!/bin/sh

docker run --name localpostgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker cp postgres/create-tables.sql localpostgres:/docker-entrypoint-initdb.d/create-tables.sql
docker exec -d localpostgres psql postgres -d postgres -f docker-entrypoint-initdb.d/create-tables.sql