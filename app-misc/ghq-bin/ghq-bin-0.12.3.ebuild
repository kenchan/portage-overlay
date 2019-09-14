# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Remote repository management made easy"
HOMEPAGE="https://github.com/motemen/ghq"
SRC_URI="https://github.com/motemen/ghq/releases/download/v${PV}/ghq_linux_amd64.zip -> ${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="dev-vcs/git"
BDEPEND=""

S=${WORKDIR}

QA_PRESTRIPPED="/usr/bin/ghq"
QA_PREBUILT=${QA_PRESTRIPPED}

src_install() {
	dobin ghq_linux_amd64/ghq
	dodoc ghq_linux_amd64/README.txt
}
