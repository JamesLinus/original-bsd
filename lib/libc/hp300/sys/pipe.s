/*-
 * Copyright (c) 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * the Systems Programming Group of the University of Utah Computer
 * Science Department.
 *
 * %sccs.include.redist.c%
 */

#if defined(LIBC_SCCS) && !defined(lint)
	.asciz "@(#)pipe.s	8.1 (Berkeley) 06/04/93"
#endif /* LIBC_SCCS and not lint */

#include "SYS.h"

SYSCALL(pipe)
	movl	sp@(4),a0
	movl	d0,a0@+
	movl	d1,a0@
	clrl	d0
	rts
