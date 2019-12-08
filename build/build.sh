#!/bin/sh
set -e

cmake  -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DDEBUG=True -DUSE_ICONV:Bool=False
make
