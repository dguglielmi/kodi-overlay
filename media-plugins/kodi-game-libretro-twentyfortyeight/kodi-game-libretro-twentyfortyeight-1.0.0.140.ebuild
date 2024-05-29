# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
KODI_ADDON_PN="game.libretro.2048"

inherit kodi-addon

DESCRIPTION="2048 for Kodi"
HOMEPAGE="https://github.com/kodi-game/game.libretro.2048"
SRC_URI="
	https://github.com/kodi-game/${KODI_ADDON_PN}/archive/${PV}-Nexus.tar.gz
		-> ${P}.tar.gz
"

S="${WORKDIR}/${KODI_ADDON_PN}-${PV}-Nexus"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	games-emulation/libretro-twentyfortyeight
	media-plugins/kodi-game-libretro
"
DEPEND="
	${RDEPEND}
"

QA_PREBUILT="
	usr/lib*/kodi/addons/${KODI_ADDON_PN}/${KODI_ADDON_PN}.so
"
