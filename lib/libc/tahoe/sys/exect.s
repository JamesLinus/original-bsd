/*
 * Copyright (c) 1983, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * %sccs.include.redist.c%
 */

#if defined(SYSLIBC_SCCS) && !defined(lint)
	.asciz "@(#)exect.s	8.1 (Berkeley) 06/04/93"
#endif /* SYSLIBC_SCCS and not lint */

#include "SYS.h"
#include <machine/psl.h>

ENTRY(exect)
	bispsw	$PSL_T
	kcall	$SYS_execve
	jmp	cerror		# exect(file, argv, env)
