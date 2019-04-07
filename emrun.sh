#!/bin/bash

docker run \
  --rm \
  -v $(pwd)/hello:/src \
  -u emscripten \
  -p 8080:8080 \
  --network=host \
  trzeci/emscripten \
  emrun --no_browser --port 8080 .
