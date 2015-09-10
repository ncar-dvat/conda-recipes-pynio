#!/bin/sh

export CFLAGS="-fPIC"
export CXXFLAGS="-fPIC"
export LDFLAGS="-L${PREFIX}/lib"
export CPPFLAGS="-I${PREFIX}/include"
./configure --prefix=${PREFIX} --with-static-proj4=${PREFIX} --without-pam \
      --with-png=${PREFIX} --with-gif=internal --with-libtiff=internal \
      --with-geotiff=internal --with-jpeg=${PREFIX} --with-libz=${PREFIX} \
      --with-sqlite3=no --with-expat=no --with-curl=no \
      --with-hdf4=no --with-pg=no --without-grib \
      --with-freexl=no --with-geos=no --with-openjpeg=no --with-mysql=no \
      --with-ecw=no --with-fgdb=no --with-odbc=no --with-xml2=no --with-ogdi=no
make
make install

rm -rf ${PREFIX}/share
