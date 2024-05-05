# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="f272aeb7aeb94e9d8bf1454e23f0232790bf0ef6"

inherit kodi-addon

DESCRIPTION="Lame MP3 encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.lame"
SRC_URI="
	https://github.com/xbmc/audioencoder.lame/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/audioencoder.lame-${COMMIT_ID}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	>=media-sound/lame-3.100
	virtual/libiconv
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}
