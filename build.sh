#!/bin/sh
aclocal -I/usr/local/share/aclocal
autoconf
automake
./configure --prefix="$AGNER_INSTALL_PREFIX" \
            --disable-dependency-tracking \
            ERLANG_INSTALL_LIB_DIR_gtknode="$AGNER_INSTALL_PREFIX"
make
