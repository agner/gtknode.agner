#!/bin/sh

ACLOCAL_FLAGS=
if [ -d /usr/local/share/aclocal ]; then
  ACLOCAL_FLAGS=-I/usr/local/share/aclocal
fi
aclocal $ACLOCAL_FLAGS

autoconf
automake
./configure --prefix="$AGNER_INSTALL_PREFIX" \
            --disable-dependency-tracking \
            ERLANG_INSTALL_LIB_DIR_gtknode="$AGNER_INSTALL_PREFIX"
make
