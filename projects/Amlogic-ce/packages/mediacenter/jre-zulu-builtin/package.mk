# SPDX-License-Identifier: GPL-2.0-or-later

PKG_NAME="jre-zulu-builtin"
PKG_VERSION="8.84.0.15-8.0.442"
PKG_LICENSE="GPL-2.0-only WITH Classpath-exception-2.0"
PKG_SITE="https://www.azul.com/products/zulu-embedded/"
PKG_URL=""
PKG_ARCH="arm aarch64 x86_64"
PKG_DEPENDS_TARGET="toolchain jre-libbluray libXext libXi libXrender chrome-libXtst jre-libXinerama"
PKG_DEPENDS_UNPACK="jdk-${TARGET_ARCH}-zulu"
PKG_LONGDESC="Built-in Azul Zulu JRE 8 runtime for Blu-ray Disc Java (BD-J) menus"
PKG_TOOLCHAIN="manual"
PKG_BUILD_FLAGS="-strip -sysroot"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/jvm/zulu-jre
  cp -a $(get_build_dir jdk-${TARGET_ARCH}-zulu)/jre ${INSTALL}/usr/lib/jvm/zulu-jre/
  ln -sfn jre/bin ${INSTALL}/usr/lib/jvm/zulu-jre/bin
  ln -sfn zulu-jre/jre ${INSTALL}/usr/lib/jvm/jre
}
