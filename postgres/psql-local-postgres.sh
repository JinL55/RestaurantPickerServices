#!/bin/sh

docker run -it --rm --link localpostgres:postgres postgres psql -h postgres -U postgres
