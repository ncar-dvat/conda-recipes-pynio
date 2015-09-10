#!/bin/sh

export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
export CFLAGS="-I${PREFIX}/include"
./configure --with-pic --prefix=${PREFIX}
make
make check
make install
