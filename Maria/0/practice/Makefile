##############################################################################
#
#    file                 : Makefile
#    created              : Tue 19 Mar 18:37:54 GMT 2019
#    copyright            : (C) 2002 Antreas Christofi
#
##############################################################################
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
##############################################################################

ROBOT       = Maria
SHIPDIR     = drivers/${ROBOT}/0/practice
SHIP        = $(shell find * -maxdepth 0 -type f -print)

PKGSUBDIRS  = ${SHIPSUBDIRS}
src-robots-bt_PKGFILES = $(shell find * -maxdepth 0 -type f -print)
src-robots-bt_PKGDIR   = ${PACKAGE}-${VERSION}/$(subst ${TORCS_BASE},,$(shell pwd))
include ${MAKE_DEFAULT}
