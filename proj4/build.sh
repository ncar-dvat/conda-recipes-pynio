#!/bin/sh

export CFLAGS="-fPIC"
./configure --prefix=${PREFIX} --enable-static=yes --enable-shared=yes --with-jni=no
make
#make check
make install
