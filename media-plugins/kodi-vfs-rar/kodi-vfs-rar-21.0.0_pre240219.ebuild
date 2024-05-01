# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CODENAME="Omega"
COMMIT_ID="2f49a0de43bc9f4e91dfec73a13dcb04df285233"

inherit kodi-addon

DESCRIPTION="RAR VFS addon for Kodi"
HOMEPAGE="https://github.com/xbmc/vfs.rar"
SRC_URI="
	https://github.com/xbmc/vfs.rar/archive/${COMMIT_ID}.tar.gz
		-> ${P}.tar.gz
"
S="${WORKDIR}/vfs.rar-${COMMIT_ID}"

LICENSE="GPL-2 unRAR"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	=media-tv/kodi-21*
"
DEPEND="
	${RDEPEND}
	dev-libs/tinyxml
"

src_prepare() {
	[ -d depends ] && rm -rf depends || die
	cmake_src_prepare
}