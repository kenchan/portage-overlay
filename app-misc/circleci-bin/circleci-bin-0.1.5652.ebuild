# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Use CircleCI from the command line"
HOMEPAGE="https://github.com/CircleCI-Public/circleci-cli"
SRC_URI="https://github.com/CircleCI-Public/circleci-cli/releases/download/v${PV}/circleci-cli_${PV}_linux_amd64.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
BDEPEND=""

S=${WORKDIR}

QA_PRESTRIPPED="/usr/bin/circleci"
QA_PREBUILT=${QA_PRESTRIPPED}

src_install() {
	dobin circleci-cli_${PV}_linux_amd64/circleci
}
