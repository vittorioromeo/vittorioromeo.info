#!/bin/bash

(cd build && ninja) && \
./build/vittorioromeo_dot_info.exe && \
cd result && \
(cd ./index/blog && ln -s ../../../resources .) && \
python3 -m http.server 8080
