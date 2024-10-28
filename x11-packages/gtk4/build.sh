TERMUX_PKG_HOMEPAGE=https://www.gtk.org/
TERMUX_PKG_DESCRIPTION="GObject-based multi-platform GUI toolkit"
TERMUX_PKG_LICENSE="LGPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.16.3"
TERMUX_PKG_SRCURL=https://download.gnome.org/sources/gtk/${TERMUX_PKG_VERSION%.*}/gtk-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=2ec53e07d18c9f003b39e4a6a838054d9259e048b6c4c05d80c0d05aa721d944
TERMUX_PKG_DEPENDS="adwaita-icon-theme, fontconfig, fribidi, gdk-pixbuf, glib, glib-bin, graphene, gtk-update-icon-cache, harfbuzz, libcairo, libepoxy, libjpeg-turbo, libpng, libtiff, libwayland, libx11, libxcursor, libxdamage, libxext, libxfixes, libxi, libxinerama, libxkbcommon, libxrandr, pango, shared-mime-info"
TERMUX_PKG_BUILD_DEPENDS="g-ir-scanner, glib-cross, libwayland-protocols, xorgproto"
TERMUX_PKG_RECOMMENDS="desktop-file-utils, librsvg, ttf-dejavu"
TERMUX_PKG_VERSIONED_GIR=false
TERMUX_PKG_DISABLE_GIR=false
# Prevent updating to unstable branch
TERMUX_PKG_AUTO_UPDATE=false
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dbuild-demos=true
-Dbuild-examples=false
-Dbuild-tests=false
-Dbuild-testsuite=false
-Dintrospection=enabled
-Dmedia-gstreamer=disabled
-Dprint-cups=disabled
-Dvulkan=disabled
-Dwayland-backend=true
"

termux_step_pre_configure() {
	termux_setup_cmake
	termux_setup_gir
	termux_setup_ninja
	termux_setup_pkg_config_wrapper "${TERMUX_PREFIX}/opt/glib/cross/lib/x86_64-linux-gnu/pkgconfig:${TERMUX_PREFIX}/opt/libwayland/cross/lib/x86_64-linux-gnu/pkgconfig"
}