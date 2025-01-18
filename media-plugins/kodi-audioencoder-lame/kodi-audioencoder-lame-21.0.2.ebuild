# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Lame MP3 encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.lame"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	>=media-sound/lame-3.100
"
DEPEND="
	${RDEPEND}
	virtual/libiconv
"
