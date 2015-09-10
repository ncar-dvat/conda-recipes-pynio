#!/bin/sh

export CFLAGS="-fPIC"
export CXXFLAGS="-fPIC"
./configure --prefix=${PREFIX}
mkdir -p ${PREFIX}/man/man1
make
make check
make install
