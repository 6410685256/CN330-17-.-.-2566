#!/usr/bin/env sh
PORT_HOST="3300"
PORT_CONTAINER="3000"
NODE_IMAGE="node:20.9.0-alpine3.18" # latest LTS

# Aliases
CMD="docker container run"
OPTS=" -it --rm"
OPTS+=" --name node"
OPTS+=" -v /${PWD}:/app"  # bind mount volume
OPTS+=" -w //app"         # working directory
OPTS+=" -p ${PORT_HOST}:${PORT_CONTAINER}"     # port mapping host:container
OPTS+=" -u node"          # user
OPTS+=" ${NODE_IMAGE}"
CMD+=$OPTS
CMD+=" sh"
alias run_node=$CMD