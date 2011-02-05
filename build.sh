#!/bin/sh
aclocal -I/usr/local/share/aclocal
autoconf
automake
./configure --prefix=`pwd`/rel \
            --disable-dependency-tracking \
            ERLANG_INSTALL_LIB_DIR_gtknode=`pwd`/rel
make install
