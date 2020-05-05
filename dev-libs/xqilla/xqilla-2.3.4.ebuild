# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="An XQuery and XPath 2 library and command line utility written in C++"
HOMEPAGE="http://xqilla.sourceforge.net/HomePage"
SRC_URI="mirror://sourceforge/${PN}/XQilla-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="static-libs tidy"

DEPEND=">=dev-libs/xerces-c-3.2.1 tidy? ( app-text/tidy-html5 )"
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}"/lib_to_lib64.patch
)

S="${WORKDIR}"/XQilla-${PV}

src_configure() {
	econf $(use_enable static-libs static) \
	--with-tidy=$(usex tidy /usr no) \
	--with-xerces=/usr
}
