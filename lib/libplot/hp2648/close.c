#ifndef lint
static char sccsid[] = "@(#)close.c	4.1 (Berkeley) 11/10/83";
#endif

#include "hp2648.h"

closepl()
{
	putchar('Z');
	fflush(stdout);
	if ( shakehands == TRUE ) {
		stty(fildes, &sarg);
		close(fildes);
	}
}
