#!/bin/bash
set -e

# Set the redis URL (linked via docker --link)
export REDIS_URL=$(echo $REDIS_PORT)

exec $@
