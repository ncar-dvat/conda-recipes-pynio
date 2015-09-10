#!/bin/sh

export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
export CFLAGS="-fPIC"
chmod +x ./configure
./configure --prefix=${PREFIX}
make
make install
