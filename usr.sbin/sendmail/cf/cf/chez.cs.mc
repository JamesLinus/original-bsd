divert(-1)
#
# Copyright (c) 1983 Eric P. Allman
# Copyright (c) 1988, 1993
#	The Regents of the University of California.  All rights reserved.
#
# %sccs.include.redist.sh%
#

include(`../m4/cf.m4')
VERSIONID(`@(#)chez.cs.mc	8.2 (Berkeley) 05/22/94')
OSTYPE(bsd4.4)dnl
DOMAIN(cs.exposed)dnl
define(`LOCAL_RELAY', vangogh.CS.Berkeley.EDU)dnl
define(`MASQUERADE_NAME', vangogh.CS.Berkeley.EDU)dnl
MAILER(local)dnl
MAILER(smtp)dnl
Fw/etc/sendmail.cw

LOCAL_RULE_0
# handle byzantium specially: no IP forwarding for now, so we map to
# it's name on a different network
R$* < @ Byzantium.$m. > $*	$#relay $@ byzantium-247.$m. $: $1 < @ Byzantium.$m. > $2
