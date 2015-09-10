#!/bin/sh

export CFLAGS="-fPIC"
export CC=${PREFIX}/bin/gcc

./configure --prefix=${PREFIX} 
make
make install

