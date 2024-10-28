TERMUX_PKG_HOMEPAGE="https://github.com/yamafaktory/jql"
TERMUX_PKG_DESCRIPTION="A JSON Query Language CLI tool"
TERMUX_PKG_LICENSE="Apache-2.0, MIT"
TERMUX_PKG_LICENSE_FILE="../../LICENSE-APACHE, ../../LICENSE-MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="8.0.0"
TERMUX_PKG_SRCURL=https://github.com/yamafaktory/jql/archive/refs/tags/jql-v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=ca43b13cb3f9c9c60c776450b83a838a73d1386002fd9365a76c6123d5db3bf0
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+.\d+.\d+"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	TERMUX_PKG_SRCDIR+="/crates/jql"
	TERMUX_PKG_BUILDDIR="$TERMUX_PKG_SRCDIR"
}