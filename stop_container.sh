#!/bin/bash
set -e

# Get the container IDs, skipping the header
containerID=$(docker ps | awk 'NR>1 {print $1}')

if [ -n "$containerID" ]; then
    echo "Stopping and removing container(s): $containerID"
    docker rm -f $containerID
else
    echo "No running containers found."
fi
