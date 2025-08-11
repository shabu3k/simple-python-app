#!/bin/bash
set -e
# Get the container ID(s) of running containers
containerID=$(docker ps -q)
# Stop the running container (if any)
containerID=$(docker ps | awk 'NR>1 {print $1}')
docker rm -f $containerID
