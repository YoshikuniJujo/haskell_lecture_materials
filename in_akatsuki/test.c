#include <stdio.h>

int
main(int argc, char *argv[])
{
	int x = 0;

	printf("%d\n", ++x + ++x + ++x);

	return 0;
}
