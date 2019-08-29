#include <stdio.h>

/* Bienvenue */

void	print(char *s, int nl)
{
	printf(s, nl, nl, nl, nl, nl, nl, nl, nl, nl, nl, nl, nl, 34, s, 34, nl, nl, nl, nl, nl);
}

int	main()
{
	/* Main */
	char *s = "#include <stdio.h>%c%c/* Bienvenue */%c%cvoid	print(char *s, int nl)%c{%c	printf(s, nl, nl, nl, nl, nl, nl, nl, nl, nl, nl, nl, nl, 34, s, 34, nl, nl, nl, nl, nl);%c}%c%cint	main()%c{%c	/* Main */%c	char *s = %c%s%c;%c	print(s, 10);%c	return(0);%c}%c";
	print(s, 10);
	return(0);
}
