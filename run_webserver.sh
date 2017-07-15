#!/bin/bash

./build/vittorioromeo_dot_info && \
cd result && \
(cd ./index/blog && ln -s ../../../resources .) && \
killall python3 ; \
(python3 -m http.server 8080 &) && \
chromium "http://localhost:8080"
