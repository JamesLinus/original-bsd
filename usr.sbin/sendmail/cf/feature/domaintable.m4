divert(-1)
#
# Copyright (c) 1983 Eric P. Allman
# Copyright (c) 1988, 1993
#	The Regents of the University of California.  All rights reserved.
#
# %sccs.include.redist.sh%
#

divert(0)
VERSIONID(`@(#)domaintable.m4	8.2 (Berkeley) 08/09/93')
divert(-1)

define(`DOMAIN_TABLE', ifelse(_ARG_, `', `hash -o /etc/domaintable', `_ARG_'))dnl
