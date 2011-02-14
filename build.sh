#!/bin/sh

PIXBUF_IN_CFLAGS=`pkg-config gtk+-2.0 --cflags | grep pixbuf`
if [ "$PIXBUF_IN_CFLAGS" = "" ]; then git checkout master ; fi

if [ -d /usr/local/share/aclocal ]; then aclocal -I/usr/local/share/aclocal ; else aclocal ; fi
autoconf
automake
./configure --prefix="$AGNER_INSTALL_PREFIX" \
            --disable-dependency-tracking \
            ERLANG_INSTALL_LIB_DIR_gtknode="$AGNER_INSTALL_PREFIX"
make
