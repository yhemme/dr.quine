#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#define str "echo %5$c#include <stdlib.h>%1$c#include <stdio.h>%1$c#include <unistd.h>%1$c#define str %2$c%4$s%2$c%1$c%1$cint main()%1$c{%1$c	int i = %3$d;%1$c	if (i <= 0)%1$c		return 0;%1$c	char *string;%1$c	i = __FILE__[7] ? (i - 1) : i;%1$c%1$c	asprintf(&string, str, 10, 34, i, str, 39);%1$c	system(string);%1$c}%5$c > Sully_%3$d.c && gcc -o Sully_%3$d Sully_%3$d.c && ./Sully_%3$d"

int main()
{
	int i = 5;
	if (i <= 0)
		return 0;
	char *string;
	i = __FILE__[7] ? (i - 1) : i;

	asprintf(&string, str, 10, 34, i, str, 39);
	system(string);
}
