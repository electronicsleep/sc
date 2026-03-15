#!/bin/bash
set +e
docker rm sc
set -e
GOOS=linux go build sc.go
docker build -t sc .
docker run -p 8080:8080 --name sc -i -t sc
