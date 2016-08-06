#!/bin/bash

FLAGS="-std=c++14 -Wall -Wextra -Wpedantic"

echo "g++, header only"
g++ $FLAGS -DLIBRARY_HEADER_ONLY -c ./src/src0.cpp -o /tmp/src0.o
g++ $FLAGS -DLIBRARY_HEADER_ONLY -c ./src/src1.cpp -o /tmp/src1.o
g++ $FLAGS -DLIBRARY_HEADER_ONLY /tmp/src0.o /tmp/src1.o ./src/main.cpp -o /tmp/x.x && /tmp/x.x

echo "clang++, header only"
clang++ $FLAGS -DLIBRARY_HEADER_ONLY ./src/main.cpp -o /tmp/x.x && /tmp/x.x

# ---

echo "g++, static linking"
g++ $FLAGS -c ./example_lib/library/module0/module0.cpp -o /tmp/module0.o
g++ $FLAGS -c ./example_lib/library/module1/module1.cpp -o /tmp/module1.o
ar rvs /tmp/example_lib.a /tmp/module0.o /tmp/module1.o
g++ $FLAGS ./src/main.cpp /tmp/example_lib.a -o /tmp/x.x && /tmp/x.x

echo "clang++, static linking"
g++ $FLAGS -c ./example_lib/library/module0/module0.cpp -o /tmp/module0.o
g++ $FLAGS -c ./example_lib/library/module1/module1.cpp -o /tmp/module1.o
ar rvs /tmp/example_lib.a /tmp/module0.o /tmp/module1.o
g++ $FLAGS ./src/main.cpp /tmp/example_lib.a -o /tmp/x.x && /tmp/x.x

echo "clang++, dynamic linking"
clang++ $FLAGS -c -fPIC ./example_lib/library/module0/module0.cpp -o /tmp/module0.o
clang++ $FLAGS -c -fPIC ./example_lib/library/module1/module1.cpp -o /tmp/module1.o
clang++ $FLAGS -shared -o /tmp/example_lib.so /tmp/module0.o /tmp/module1.o
clang++ $FLAGS ./src/main.cpp /tmp/example_lib.so -o /tmp/x.x && /tmp/x.x

