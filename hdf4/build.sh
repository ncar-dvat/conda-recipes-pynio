#!/bin/sh

export YACC=no
export LEX=no
export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
export CC=gcc
export DYLD_FALLBACK_LIBRARY_PATH=${PREFIX}/lib
export CFLAGS="-fPIC"
./configure --prefix=${PREFIX} --with-zlib=${PREFIX} --with-jpeg=${PREFIX} --with-szip=${PREFIX} --disable-netcdf
make
make check
make install
