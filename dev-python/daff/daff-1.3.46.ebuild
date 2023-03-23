# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..11} pypy3 )

inherit distutils-r1 pypi

DESCRIPTION="The daff can produce and apply tabular diffs"
HOMEPAGE="https://github.com/paulfitz/daff"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ia64 ~riscv ~sparc ~x86"
