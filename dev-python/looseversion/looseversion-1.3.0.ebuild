# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( pypy3_11 python3_{11..14} )

inherit pypi distutils-r1

DESCRIPTION="A backwards/forwards-compatible fork of distutils.version.LooseVersion"
HOMEPAGE="
	https://pypi.org/project/looseversion/
	https://github.com/effigies/looseversion/
"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 hppa ppc ppc64 ~riscv sparc x86"

distutils_enable_tests pytest

python_test() {
	epytest tests.py
}
