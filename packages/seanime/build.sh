TERMUX_PKG_HOMEPAGE=https://github.com/5rahim/seanime
TERMUX_PKG_DESCRIPTION="Self-hosted anime and manga server for sea rovers."
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.2.1"
TERMUX_PKG_SRCURL=https://github.com/5rahim/seanime/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=c629bfd10622de2f77b2d9730329720bc36b1d7fad35f84689d79ddb54d641b9
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_HOSTBUILD=true

termux_step_host_build() {
	termux_setup_nodejs

	cp -r $TERMUX_PKG_SRCDIR/seanime-web ./seanime-web
	cd seanime-web
	npm install
	npm run build
}

termux_step_pre_configure() {
	cp -r $TERMUX_PKG_HOSTBUILD_DIR/seanime-web/out $TERMUX_PKG_SRCDIR/web/

	termux_setup_golang
}

termux_step_make() {
	go build -o seanime -trimpath -ldflags="-s -w"
}

termux_step_make_install() {
	install -Dm700 -t "${TERMUX_PREFIX}"/bin "$TERMUX_PKG_SRCDIR"/seanime
}
