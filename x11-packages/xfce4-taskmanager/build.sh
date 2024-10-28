TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/apps/xfce4-taskmanager/start
TERMUX_PKG_DESCRIPTION="Easy to use task manager"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.5.7
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/apps/xfce4-taskmanager/${TERMUX_PKG_VERSION%.*}/xfce4-taskmanager-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=6736832f5a64533e536f4994280bd907da19666cda8d2f465c8a53bb581f68bb
TERMUX_PKG_DEPENDS="gdk-pixbuf, glib, gtk3, libcairo, libwnck, libx11, libxfce4ui, libxfce4util, libxmu, xfconf"
TERMUX_PKG_AUTO_UPDATE=true