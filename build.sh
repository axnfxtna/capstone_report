#!/bin/bash

# Try to start an existing container
docker start -a -i latex-builder
if [ $? -ne 0 ]; then
  ROOT_DIR=$(pwd)

  docker run -it \
    --mount type=bind,source="$ROOT_DIR",target=/data \
    --name latex-builder \
    blang/latex:ctanfull /bin/bash
fi
