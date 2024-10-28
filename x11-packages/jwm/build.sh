TERMUX_PKG_HOMEPAGE=http://joewing.net/projects/jwm/
TERMUX_PKG_DESCRIPTION="Joe's Window Manager is a light-weight X11 window manager"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Joshua Kahn @TomJo2000"
TERMUX_PKG_VERSION=2.4.5
TERMUX_PKG_SRCURL=https://github.com/joewing/jwm/releases/download/v${TERMUX_PKG_VERSION}/jwm-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=9a1a708085d101c5f7f986b00feb8a6c35df767c5784d4bb439257af9e9e50c1
TERMUX_PKG_DEPENDS="libcairo, libjpeg-turbo, libpng, librsvg, libxext, libxinerama, libxmu, libxpm, libxrender, pango"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true