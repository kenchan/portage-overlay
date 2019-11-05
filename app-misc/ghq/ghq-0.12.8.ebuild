# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Remote repository management made easy"
HOMEPAGE="https://github.com/motemen/ghq"
SRC_URI="https://github.com/motemen/ghq/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

inherit golang-build golang-vcs-snapshot

EGO_PN="github.com/motemen/ghq"

src_compile() {
	pushd src/${EGO_PN} || die
	GOPATH="${S}" go install -v ${EGO_PN} || die
	popd || die
}

src_install() {
	dobin bin/ghq
	dodoc src/${EGO_PN}/README.adoc
}
