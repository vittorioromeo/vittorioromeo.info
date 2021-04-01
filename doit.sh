#!/bin/bash

(cd build && make -j8) && ./build/vittorioromeo_dot_info.exe && ./upload_scp.sh
