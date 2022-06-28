# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.2-dev

EAPI=8

CRATES="
	addr2line-0.17.0
	adler-1.0.2
	aho-corasick-0.7.18
	ansi_term-0.12.1
	anyhow-1.0.57
	assert_cmd-2.0.4
	async-broadcast-0.4.0
	async-channel-1.6.1
	async-executor-1.4.1
	async-io-1.7.0
	async-lock-2.5.0
	async-priority-channel-0.1.0
	async-recursion-0.3.2
	async-recursion-1.0.0
	async-stream-0.3.3
	async-stream-impl-0.3.3
	async-task-4.2.0
	async-trait-0.1.56
	atomic-take-1.0.0
	atty-0.2.14
	autocfg-1.1.0
	axum-0.5.7
	axum-core-0.2.5
	backtrace-0.3.65
	base64-0.13.0
	bitflags-1.3.2
	block-0.1.6
	bstr-0.2.17
	byteorder-1.4.3
	bytes-1.1.0
	cache-padded-1.2.0
	cc-1.0.73
	cfg-if-0.1.10
	cfg-if-1.0.0
	clap-3.1.18
	clap_lex-0.2.0
	clearscreen-1.0.10
	command-group-1.0.8
	concurrent-queue-1.2.2
	console-0.15.0
	console-api-0.3.0
	console-subscriber-0.1.6
	crc32fast-1.3.2
	crossbeam-channel-0.5.4
	crossbeam-utils-0.8.8
	derivative-2.2.0
	difflib-0.4.0
	dirs-2.0.2
	dirs-4.0.0
	dirs-next-2.0.0
	dirs-sys-0.3.7
	dirs-sys-next-0.1.2
	doc-comment-0.3.3
	dunce-1.0.2
	easy-parallel-3.2.0
	either-1.6.1
	embed-resource-1.7.2
	encode_unicode-0.3.6
	enumflags2-0.7.5
	enumflags2_derive-0.7.4
	event-listener-2.5.2
	failure-0.1.8
	failure_derive-0.1.8
	fastrand-1.7.0
	filetime-0.2.16
	flate2-1.0.24
	fnv-1.0.7
	fsevent-sys-4.1.0
	futures-0.3.21
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-executor-0.3.21
	futures-io-0.3.21
	futures-lite-1.12.0
	futures-macro-0.3.21
	futures-sink-0.3.21
	futures-task-0.3.21
	futures-util-0.3.21
	getrandom-0.1.16
	getrandom-0.2.6
	gimli-0.26.1
	git-config-0.2.1
	git-features-0.20.0
	git-hash-0.9.5
	globset-0.4.9
	h2-0.3.13
	hashbrown-0.11.2
	hdrhistogram-7.5.0
	heck-0.3.3
	hermit-abi-0.1.19
	hex-0.4.3
	http-0.2.8
	http-body-0.4.5
	http-range-header-0.3.0
	httparse-1.7.1
	httpdate-1.0.2
	humantime-2.1.0
	hyper-0.14.19
	hyper-timeout-0.4.1
	ignore-0.4.18
	indexmap-1.8.2
	inotify-0.9.6
	inotify-sys-0.1.5
	insta-1.14.1
	instant-0.1.12
	is_ci-1.1.1
	itertools-0.10.3
	itoa-1.0.2
	kqueue-1.0.6
	kqueue-sys-1.0.3
	lazy_static-1.4.0
	libc-0.2.126
	libmimalloc-sys-0.1.25
	linked-hash-map-0.5.4
	lock_api-0.4.7
	log-0.4.17
	mac-notification-sys-0.5.0
	malloc_buf-0.0.6
	matchers-0.1.0
	matchit-0.5.0
	memchr-2.5.0
	memoffset-0.6.5
	miette-4.7.1
	miette-derive-4.7.1
	mimalloc-0.1.29
	mime-0.3.16
	minimal-lexical-0.2.1
	miniz_oxide-0.5.3
	mio-0.8.3
	nix-0.22.3
	nix-0.23.1
	nix-0.24.1
	nom-5.1.2
	nom-7.1.1
	notify-5.0.0-pre.15
	notify-rust-4.5.8
	num-traits-0.2.15
	num_cpus-1.13.1
	num_threads-0.1.6
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	object-0.28.4
	once_cell-1.12.0
	ordered-stream-0.0.1
	os_str_bytes-6.1.0
	owo-colors-3.4.0
	parking-2.0.0
	parking_lot-0.11.2
	parking_lot_core-0.8.5
	percent-encoding-2.1.0
	phf-0.8.0
	phf_codegen-0.8.0
	phf_generator-0.8.0
	phf_shared-0.8.0
	pin-project-1.0.10
	pin-project-internal-1.0.10
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	polling-2.2.0
	ppv-lite86-0.2.16
	predicates-2.1.1
	predicates-core-1.0.3
	predicates-tree-1.0.5
	proc-macro-crate-1.1.3
	proc-macro2-1.0.39
	prost-0.10.4
	prost-derive-0.10.1
	prost-types-0.10.1
	pwd-1.3.1
	quick-error-2.0.1
	quote-1.0.18
	rand-0.7.3
	rand-0.8.5
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.3
	rand_hc-0.2.0
	rand_pcg-0.2.1
	redox_syscall-0.2.13
	redox_users-0.4.3
	regex-1.5.6
	regex-automata-0.1.10
	regex-syntax-0.6.26
	remove_dir_all-0.5.3
	rustc-demangle-0.1.21
	rustc_version-0.4.0
	ryu-1.0.10
	same-file-1.0.6
	scopeguard-1.1.0
	semver-1.0.10
	serde-1.0.137
	serde_derive-1.0.137
	serde_json-1.0.81
	serde_repr-0.1.8
	serde_yaml-0.8.24
	sha1-0.6.1
	sha1_smol-1.0.0
	sharded-slab-0.1.4
	signal-hook-registry-1.4.0
	similar-2.1.0
	siphasher-0.3.10
	slab-0.4.6
	smallvec-1.8.0
	smawk-0.3.1
	socket2-0.4.4
	static_assertions-1.1.0
	strsim-0.10.0
	strum-0.22.0
	strum_macros-0.22.0
	supports-color-1.3.0
	supports-hyperlinks-1.2.0
	supports-unicode-1.0.2
	syn-1.0.96
	sync_wrapper-0.1.1
	synstructure-0.12.6
	tempfile-3.3.0
	termcolor-1.1.3
	terminal_size-0.1.17
	terminfo-0.7.3
	termtree-0.2.4
	textwrap-0.15.0
	thiserror-1.0.31
	thiserror-impl-1.0.31
	thread_local-1.1.4
	time-0.3.9
	tokio-1.19.2
	tokio-io-timeout-1.2.0
	tokio-macros-1.8.0
	tokio-stream-0.1.9
	tokio-util-0.7.3
	toml-0.5.9
	tonic-0.7.2
	tower-0.4.12
	tower-http-0.3.4
	tower-layer-0.3.1
	tower-service-0.3.1
	tracing-0.1.35
	tracing-attributes-0.1.21
	tracing-core-0.1.27
	tracing-futures-0.2.5
	tracing-log-0.1.3
	tracing-serde-0.1.3
	tracing-subscriber-0.3.11
	try-lock-0.2.3
	uds_windows-1.0.2
	unicase-2.6.0
	unicode-bom-1.1.4
	unicode-ident-1.0.0
	unicode-linebreak-0.1.2
	unicode-segmentation-1.9.0
	unicode-width-0.1.9
	unicode-xid-0.2.3
	valuable-0.1.0
	version_check-0.9.4
	vswhom-0.1.0
	vswhom-sys-0.1.1
	wait-timeout-0.2.0
	waker-fn-1.1.0
	walkdir-2.3.2
	want-0.3.0
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.10.2+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wepoll-ffi-0.1.2
	which-4.2.5
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-0.24.0
	windows-sys-0.36.1
	windows_aarch64_msvc-0.36.1
	windows_i686_gnu-0.24.0
	windows_i686_gnu-0.36.1
	windows_i686_msvc-0.24.0
	windows_i686_msvc-0.36.1
	windows_x86_64_gnu-0.24.0
	windows_x86_64_gnu-0.36.1
	windows_x86_64_msvc-0.24.0
	windows_x86_64_msvc-0.36.1
	winreg-0.10.1
	winrt-notification-0.5.1
	xml-rs-0.8.4
	yaml-rust-0.4.5
	zbus-2.2.0
	zbus_macros-2.2.0
	zbus_names-2.1.0
	zvariant-3.2.1
	zvariant_derive-3.2.1
"

inherit cargo

DESCRIPTION="Executes commands in response to file modifications"
HOMEPAGE="https://github.com/watchexec/watchexec"
SRC_URI="https://github.com/watchexec/${PN}/archive/refs/tags/cli-v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" $(cargo_crate_uris)"

LICENSE="Apache-2.0 BSD CC0-1.0 CC-PD ISC MIT WTFPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# Prevent portage from trying to fetch bunch of *.crate from mirror despite they are not mirrored.
RESTRICT="mirror"

S="${WORKDIR}/${PN}-cli-v${PV}"
DOCS=( README.md )
HTML_DOCS=( doc/watchexec.1.html )

QA_FLAGS_IGNORED="usr/bin/watchexec"

src_compile() {
	cargo_src_compile --manifest-path=crates/cli/Cargo.toml
}

src_test() {
	cargo_src_test --manifest-path crates/lib/Cargo.toml --lib
	cargo_src_test --manifest-path crates/cli/Cargo.toml
}

src_install() {
	cargo_src_install --path crates/cli

	einstalldocs
	doman doc/watchexec.1

	insinto /usr/share/zsh/site-functions
	newins completions/zsh _watchexec
}
