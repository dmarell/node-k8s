#!/usr/bin/env bash
# Use this script in order to start as separate docker containers.
# This file is unused if using docker-compose

# Build docker image
docker build -t node-k8s .

# Stop and remove any previous container
docker rm -f node-k8s && true >& /dev/null

# Create and run the new container
docker run -d -p 9090:9090 --name node-k8s node-k8s
