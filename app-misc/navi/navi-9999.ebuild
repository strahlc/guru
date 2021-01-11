# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
	aho-corasick-0.7.13
	anyhow-1.0.32
	arrayref-0.3.6
	arrayvec-0.5.1
	atty-0.2.14
	autocfg-1.0.1
	base64-0.12.3
	bitflags-1.2.1
	blake2b_simd-0.5.10
	cfg-if-0.1.10
	clap-3.0.0-beta.2
	clap_derive-3.0.0-beta.2
	constant_time_eq-0.1.5
	crossbeam-utils-0.7.2
	derive_more-0.14.1
	directories-next-1.0.1
	dirs-sys-next-0.1.0
	edit-0.1.2
	getrandom-0.1.15
	hashbrown-0.9.1
	heck-0.3.1
	hermit-abi-0.1.15
	indexmap-1.6.1
	lazy_static-1.4.0
	libc-0.2.77
	memchr-2.3.3
	numtoa-0.1.0
	os_str_bytes-2.4.0
	ppv-lite86-0.2.10
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-0.4.30
	proc-macro2-1.0.21
	quote-0.6.13
	quote-1.0.7
	rand-0.7.3
	rand_chacha-0.2.2
	rand_core-0.5.1
	rand_hc-0.2.0
	raw_tty-0.1.0
	redox_syscall-0.1.57
	redox_termios-0.1.1
	redox_users-0.3.5
	regex-1.3.9
	regex-syntax-0.6.18
	remove_dir_all-0.5.3
	rust-argon2-0.8.2
	rustc_version-0.2.3
	same-file-1.0.6
	semver-0.9.0
	semver-parser-0.7.0
	shellwords-1.1.0
	strip-ansi-escapes-0.1.0
	strsim-0.10.0
	syn-0.15.44
	syn-1.0.40
	tempfile-3.1.0
	termcolor-1.1.2
	terminal_size-0.1.13
	termion-1.5.5
	textwrap-0.12.1
	thiserror-1.0.20
	thiserror-impl-1.0.20
	thread_local-1.0.1
	unicode-segmentation-1.6.0
	unicode-width-0.1.8
	unicode-xid-0.1.0
	unicode-xid-0.2.1
	utf8parse-0.1.1
	vec_map-0.8.2
	version_check-0.9.2
	vte-0.3.3
	walkdir-2.3.1
	wasi-0.9.0+wasi-snapshot-preview1
	which-3.1.1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="An interactive cheatsheet tool for the command-line"
HOMEPAGE="https://github.com/denisidoro/navi"
SRC_URI="$(cargo_crate_uris ${CRATES})"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/denisidoro/navi.git"
else
	SRC_URI+=" https://github.com/denisidoro/navi/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="Apache-2.0"
SLOT="0"
RESTRICT="mirror"

RDEPEND="app-shells/fzf"
DEPEND="${RDEPEND}"

src_unpack() {
	[[ ${PV} == 9999 ]] && git-r3_src_unpack
	cargo_src_unpack
}
