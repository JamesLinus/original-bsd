/*-
 * Copyright (c) 1979, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * %sccs.include.redist.c%
 */

#ifndef lint
static char sccsid[] = "@(#)NAM.c	8.1 (Berkeley) 06/06/93";
#endif /* not lint */

#include "h00vars.h"

char *
NAM(val, name)

	long		val;	/* internal enumerated type value */
	char		*name;	/* ptr to enumerated type name descriptor */
{
	register int	value = val;
	register short	*sptr;

	sptr = (short *)name;
	if (value < 0 || value >= *sptr) {
		ERROR("Enumerated type value of %D is out of range on output\n",
			val);
	}
	sptr++;
	return	name + 2 + sptr[value];
}
