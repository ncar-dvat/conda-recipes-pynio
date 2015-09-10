#!/bin/sh


if test $OSX_ARCH;  then
   export DYLD_FALLBACK_LIBRARY_PATH=${PREFIX}/lib
   export CC=${PREFIX}/bin/h5cc
else
   #export LD_RUN_PATH=${PREFIX}/lib
   #export LD_LIBRARY_PATH=${PREFIX}/lib:$LD_LIBRARY_PATH
   export HDF5_LDFLAGS="-L ${PREFIX}/lib"
   export HDF5_CC="${PREFIX}/bin/gcc"
   export HDF5_CLINKER="${PREFIX}/bin/gcc"
   export CFLAGS="-fPIC"
fi
env
./configure --prefix=${PREFIX} --with-hdf5=${PREFIX} --with-zlib=${PREFIX} 

make
make install
cd include && make install-includeHEADERS

