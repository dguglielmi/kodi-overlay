# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Libarchive VFS add-on for Kodi"
HOMEPAGE="https://github.com/xbmc/vfs.libarchive"

LICENSE="GPL-2"
SLOT="0"

RDEPEND="
	app-arch/libarchive:=[bzip2,lz4,lzma,lzo,zlib(+)]
"
DEPEND="
	${RDEPEND}
	app-arch/xz-utils
	app-arch/bzip2
	sys-libs/zlib
	app-arch/lz4
	dev-libs/lzo:2
	dev-libs/openssl
"
