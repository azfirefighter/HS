# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="rngd"
PKG_VERSION="5"
PKG_SITE="https://git.kernel.org/pub/scm/utils/kernel/rng-tools/rng-tools.git/about/"
PKG_URL="https://git.kernel.org/pub/scm/utils/kernel/rng-tools/rng-tools.git/snapshot/rng-tools-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="libuargp"

PKG_AUTORECONF="yes"

pre_configure_target() {
  export LIBS="-largp"
  export LDFLAGS="$LDFLAGS -static"
}

post_makeinstall_target() {
  rm -f $INSTALL/usr/bin/rngtest
}
