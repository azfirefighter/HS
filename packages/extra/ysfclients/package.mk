# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="ysfclients"
PKG_VERSION="f8121777cc"
PKG_SITE="https://github.com/g4klx/YSFClients/tree/master"
PKG_URL="https://github.com/g4klx/YSFClients/archive/$PKG_VERSION.tar.gz"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -PR YSFGateway $INSTALL/usr/bin
  cp -PR YSFParrot $INSTALL/usr/bin

  mkdir -p $INSTALL/etc/config
  cp -PR $PKG_BUILD/YSFGateway/YSFGateway.ini $INSTALL/etc/config
}
