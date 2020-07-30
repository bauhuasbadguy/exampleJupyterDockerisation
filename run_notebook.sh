#!/usr/bin/env bash

docker build -t openvirus_tests_notebook:0.0.0 .

docker run -it \
 -p 8888:8888 \
 -v $(pwd)/data:/data \
 openvirus_tests_notebook:0.0.0
