#include <stdio.h>
#include <time.h>

int
main (int argc, char *argv[])
{
	char buf[100];
	/* 0101-01-01T01:01:01Z */
	time_t t = -58979923200;
	struct tm tm;

        gmtime_r (&t, &tm);
	strftime (buf, sizeof buf, "%C%y", &tm);
	printf ("Should be '0101': %s\n", buf);
	strftime (buf, sizeof buf, "%Y", &tm);
	printf ("Should be '0101': %s\n", buf);
	strftime (buf, sizeof buf, "%2C%y", &tm);
	printf ("Should be '0101': %s\n", buf);
	strftime (buf, sizeof buf, "%4Y", &tm);
	printf ("Should be '0101': %s\n", buf);
	return 0;
}
