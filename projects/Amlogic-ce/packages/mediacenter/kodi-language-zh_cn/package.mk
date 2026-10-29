# SPDX-License-Identifier: GPL-2.0-or-later

PKG_NAME="kodi-language-zh_cn"
PKG_VERSION="11.0.104"
PKG_SHA256="ccc385765b07bca7582c9158282fcd061241da58f169399b082a96703b5b2434"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/xbmc/repo-resources/tree/omega/resource.language.zh_cn"
PKG_URL="https://mirrors.kodi.tv/addons/omega/resource.language.zh_cn/resource.language.zh_cn-${PKG_VERSION}.zip"
PKG_SOURCE_DIR="resource.language.zh_cn"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Simplified Chinese language pack. The R10 build uses the local resource.language.zh_cn repository, currently identical to Kodi Omega 11.0.104."
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/share/kodi/addons/resource.language.zh_cn
  cp -PR ${PKG_BUILD}/addon.xml ${PKG_BUILD}/icon.png ${PKG_BUILD}/resources \
    ${INSTALL}/usr/share/kodi/addons/resource.language.zh_cn/
}
