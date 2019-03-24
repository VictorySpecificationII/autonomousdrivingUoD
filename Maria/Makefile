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
MODULE      = ${ROBOT}.so
MODULEDIR   = drivers/${ROBOT}
SOURCES     = ${ROBOT}.cpp driver.cpp

SHIPDIR     = drivers/${ROBOT}
SHIP        = ${ROBOT}.xml acura-nsx-sz.rgb logo.rgb
SHIPSUBDIRS = 0

PKGSUBDIRS  = ${SHIPSUBDIRS}
src-robots-Maria_PKGFILES = $(shell find * -maxdepth 0 -type f -print)
src-robots-Maria_PKGDIR   = ${PACKAGE}-${VERSION}/$(subst ${TORCS_BASE},,$(shell pwd))

include ${MAKE_DEFAULT}
