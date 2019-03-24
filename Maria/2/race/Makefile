ROBOT       = Maria
SHIPDIR     = drivers/${ROBOT}/2/race
SHIP        = $(shell find *.xml -maxdepth 0 -type f -print)

src-robots-Maria_PKGFILES = $(shell find * -maxdepth 0 -type f -print)
src-robots-Maria_PKGDIR   = ${PACKAGE}-${VERSION}/$(subst ${TORCS_BASE},,$(shell pwd))
include ${MAKE_DEFAULT}
