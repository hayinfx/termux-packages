TERMUX_PKG_HOMEPAGE=https://dl.matroska.org/downloads/libmatroska/
TERMUX_PKG_DESCRIPTION="Matroska library"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.7.1
TERMUX_PKG_SRCURL=https://github.com/Matroska-Org/libmatroska/archive/release-$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=64763443947833e6c17f1f555f4bb0df6c9f91881810d9d5e0f0bad3622d308b
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_METHOD=repology
TERMUX_PKG_DEPENDS="libc++, libebml"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_SHARED_LIBS=ON
"
