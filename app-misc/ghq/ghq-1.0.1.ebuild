# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_PN="github.com/motemen/ghq"
EGO_VENDOR=(
    "github.com/Songmu/gitconfig v0.0.3"
    "github.com/cpuguy83/go-md2man/v2 f79a8a8ca69d github.com/cpuguy83/go-md2man"
    "github.com/daviddengcn/go-colortext 186a3d44e920"
    "github.com/golangplus/bytes 45c989fe5450"
    "github.com/golangplus/fmt 2a5d6d7d2995"
    "github.com/golangplus/testing af21d9c3145e"
    "github.com/mattn/go-isatty v0.0.11"
    "github.com/motemen/go-colorine 45d19169413a"
    "github.com/pmezard/go-difflib v1.0.0"
    "github.com/russross/blackfriday/v2 v2.0.1 github.com/russross/blackfriday"
    "github.com/saracen/walker 324a081bae7e"
    "github.com/shurcooL/sanitized_anchor_name v1.0.0"
    "github.com/urfave/cli/v2 v2.1.1 github.com/urfave/cli"
    "golang.org/x/net c0dbc17a3553 github.com/golang/net"
    "golang.org/x/sync cd5d95a43a6e github.com/golang/sync"
    "golang.org/x/sys 33540a1f6037 github.com/golang/sys"
    "golang.org/x/tools 4c025a95b26e github.com/golang/tools"
    "gopkg.in/check.v1 20d25e280405 github.com/go-check/check"
    "gopkg.in/yaml.v2 v2.2.2 github.com/go-yaml/yaml"
    "gopkg.in/yaml.v2 v2.2.7 github.com/go-yaml/yaml"
)

DESCRIPTION="Remote repository management made easy"
HOMEPAGE="https://github.com/motemen/ghq"
SRC_URI="https://github.com/motemen/ghq/archive/v${PV}.tar.gz -> ${P}.tar.gz
        $(go-module_vendor_uris)"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

src_compile() {
	go build -work -o "bin/${PN}" ./ || die
}

src_install() {
	dobin bin/${PN}
	dodoc README.adoc
}
