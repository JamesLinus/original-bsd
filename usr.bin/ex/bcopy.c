/*
 * Copyright (c) 1980 Regents of the University of California.
 * All rights reserved.  The Berkeley software License Agreement
 * specifies the terms and conditions for redistribution.
 */

#ifndef lint
static char sccsid[] = "@(#)bcopy.c	5.1.1.1 (Berkeley) 05/31/85";
#endif not lint

/* block copy from from to to, count bytes */
bcopy(from, to, count)
#ifdef vax
	char *from, *to;
	int count;
{

	asm("	movc3	12(ap),*4(ap),*8(ap)");
}
#else
	register char *from, *to;
	register int count;
{
	while (count--)
		*to++ = *from++;
}
#endif
