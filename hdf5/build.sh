#!/bin/sh

export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
export CFLAGS="-I${PREFIX}/include"
export CC=gcc

./configure --prefix=${PREFIX} --with-zlib=${PREFIX}
make
#make check
make install
