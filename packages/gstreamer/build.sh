TERMUX_PKG_HOMEPAGE=https://gstreamer.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Open source multimedia framework"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="1.24.8"
TERMUX_PKG_SRCURL=https://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=b807dbf36c5d2b3ce1c604133ed0c737350f9523ce4d8d644a1177c5f9d6ded3
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="glib"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner"
TERMUX_PKG_BREAKS="gstreamer-dev"
TERMUX_PKG_REPLACES="gstreamer-dev"
TERMUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=enabled
-Dcheck=disabled
-Dtests=disabled
-Dexamples=disabled
-Dbenchmarks=disabled
-Dlibunwind=disabled
-Dlibdw=disabled
"

termux_step_pre_configure() {
	termux_setup_gir
	termux_setup_glib_cross_pkg_config_wrapper
}