# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

if [[ ! "${PV}" =~ 9999* ]]; then
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

inherit kodi-addon

DESCRIPTION="Flac encoder addon for Kodi"
HOMEPAGE="https://github.com/xbmc/audioencoder.flac"

LICENSE="GPL-2+"
SLOT="0"

RDEPEND="
	>=media-libs/flac-1.4.3:=
"
DEPEND="
	${RDEPEND}
	>=media-libs/libogg-1.3.5
"
