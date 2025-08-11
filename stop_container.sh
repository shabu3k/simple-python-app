#!/bin/bash
set -e

# Get the container ID(s) of running containers
containerID=$(docker ps -q)

# Stop and remove them if they exist
if [ -n "$containerID" ]; then
    echo "Stopping and removing container(s): $containerID"
    docker rm -f $containerID
else
    echo "No running containers found."
fi
