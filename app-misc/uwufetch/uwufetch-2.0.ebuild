# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A meme system info tool for Linux"
HOMEPAGE="https://github.com/TheDarkBug/uwufetch"
SRC_URI="https://github.com/TheDarkBug/uwufetch/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

PATCHES=(
	"${FILESDIR}/${P}-destdir.patch"
	"${FILESDIR}/${P}-soname.patch"
	"${FILESDIR}/${P}-lib64.patch"
)

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="x11-apps/xwininfo"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	eapply -p0 "${FILESDIR}/${P}-destdir.patch"
	#eapply -p0 "${FILESDIR}/${P}-soname.patch"
	eapply -p0 "${FILESDIR}/${P}-lib64.patch"
	eapply -p0 "${FILESDIR}/${P}-includedir.patch"
	eapply -p0 "${FILESDIR}/${P}-reslib.patch"
	eapply -p0 "${FILESDIR}/${P}-nocompressman.patch"

	eapply_user
}

src_compile() {
	emake build
}

src_install() {
	emake DESTDIR="${D}/usr" install

	mv "${D}/usr/etc" "${D}/etc"

	dodoc uwufetch.1
}
