# SPDX-License-Identifier: GPL-2.0-only

PKG_NAME="libarchive"
PKG_VERSION="3.4.2"
PKG_SITE="https://www.libarchive.org"
PKG_WATCH="https://www.libarchive.org/downloads/ .*/libarchive-(.*)\.tar.gz"
PKG_URL="https://www.libarchive.org/downloads/$PKG_NAME-$PKG_VERSION.tar.gz"

PKG_CMAKE_OPTS_TARGET="
  -DENABLE_NETTLE=OFF
  -DENABLE_OPENSSL=OFF
  -DENABLE_LZ4=OFF
  -DENABLE_LZO=OFF
  -DENABLE_LZMA=OFF
  -DENABLE_BZip2=OFF
  -DENABLE_LIBXML2=OFF
  -DENABLE_EXPAT=OFF
  -DENABLE_PCREPOSIX=OFF
  -DENABLE_LibGCC=OFF
  -DENABLE_CNG=OFF
  -DENABLE_TAR_SHARED=OFF
  -DENABLE_CPIO=OFF
  -DENABLE_CAT=OFF
  -DENABLE_XATTR=OFF
  -DENABLE_ACL=OFF
  -DENABLE_ICONV=OFF
  -DENABLE_TEST=OFF
  -DENABLE_COVERAGE=OFF
"

post_makeinstall_target() {
  rm -rf $SYSROOT_PREFIX/usr/lib/libarchive.so*
  rm -rf $INSTALL/usr
}
