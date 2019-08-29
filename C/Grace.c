#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#define start(a) int main(void){a}
#define OUVRE open("Grace_kid.c", O_RDWR | O_CREAT)
#define DROITS chmod("./Grace_kid.c", 0x0000777)

start(
	int fd = OUVRE;
	DROITS;
	char *str = "#include <sys/stat.h>%c#include <fcntl.h>%c#include <stdio.h>%c#define start(a) int main(void){a}%c#define OUVRE open(%cGrace_kid.c%c, O_RDWR | O_CREAT)%c#define DROITS chmod(%c./Grace_kid.c%c, 0x0000777)%c%cstart(%c	int fd = OUVRE;%c	DROITS;%c	char *str = %c%s%c;%c	dprintf(fd, str, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10);%c	return 0;%c)%c";
	dprintf(fd, str, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 34, str, 34, 10, 10, 10, 10);
	return 0;
)
