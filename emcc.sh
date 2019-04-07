#!/bin/bash

docker run \
  --rm \
  -v $(pwd)/hello:/src \
  -u emscripten \
  trzeci/emscripten \
  emcc hello.c -s WASM=1 -o index.html
