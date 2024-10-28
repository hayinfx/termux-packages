TERMUX_PKG_HOMEPAGE=https://yosyshq.net/yosys/
TERMUX_PKG_DESCRIPTION="A framework for RTL synthesis tools"
TERMUX_PKG_LICENSE="ISC"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.46"
TERMUX_PKG_SRCURL=https://github.com/YosysHQ/yosys/archive/refs/tags/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=429966c5ac990bdd82f0084c5afa5f890b144014cc8aa093a184a89339c27937
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+"
TERMUX_PKG_DEPENDS="boost, graphviz, libandroid-glob, libandroid-spawn, libc++, libffi, readline, tcl, zlib, python"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=$TERMUX_PREFIX"

termux_step_pre_configure() {
	export LIBS="-Wl,-rpath=$TERMUX_PREFIX/lib -landroid-glob -landroid-spawn"
	export BOOST_PYTHON_LIB="-lboost_python312"
	export PATH="$TERMUX_PKG_TMPDIR:$PATH"

	echo "#!$(readlink /proc/$$/exe)" > "$TERMUX_PKG_TMPDIR/python3-config"
	echo "exec \"$TERMUX_PREFIX/bin/python3-config\" \"\$@\"" >> "$TERMUX_PKG_TMPDIR/python3-config"
	chmod +x "$TERMUX_PKG_TMPDIR/python3-config"
	ln -sf "$(command -v $STRIP)" "$TERMUX_PKG_TMPDIR/strip"
	rm "$TERMUX_PKG_SRCDIR/setup.py"
}