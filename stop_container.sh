#!/bin/bash
set -e

# Stop the running container (if any)
containerID=$(docker ps -q)
docker rm -f $containerID
#commit
#commit
