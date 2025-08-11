#!/bin/bash
set -e
# Get the container ID(s) of running containers
containerID=$(docker ps -q)
# Stop the running container (if any)
if [ -n "$containerID" ]; then
    echo "Stopping and removing container(s): $containerID"
    docker rm -f $containerID
else
    echo "No running containers found."
fi
