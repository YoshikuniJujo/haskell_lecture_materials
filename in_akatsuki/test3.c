#include <stdio.h>

int
main(int argc, char *argv[])
{
	int x = 0;

	printf("%d\n", inc(&x) + inc(&x) + inc(&x));

	return 0;
}

int inc(int *x)
{
	*x = *x + 1;
	return *x;
}
