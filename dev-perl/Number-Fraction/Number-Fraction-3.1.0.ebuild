# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=DAVECROSS
DIST_VERSION=v${PV}
inherit perl-module

DESCRIPTION="Perl extension to model fractions"

SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	virtual/perl-Carp
	dev-perl/Moo
	dev-perl/Type-Tiny
"
DEPEND="${RDEPEND}"
BDEPEND="
	>=dev-perl/Module-Build-0.420.0
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Warn
	)
"

PERL_RM_FILES=( "t/10_pod.t" "t/11_pod_coverage.t" )
