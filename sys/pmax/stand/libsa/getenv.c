/*-
 * Copyright (c) 1992, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Ralph Campbell.
 *
 * %sccs.include.redist.c%
 *
 *	@(#)getenv.c	8.1 (Berkeley) 06/10/93
 */

#include <pmax/stand/dec_prom.h>

char *
getenv(s)
	char *s;
{
	return (callv->getenv(s));
}
